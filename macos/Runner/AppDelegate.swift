import Cocoa
import FlutterMacOS
//https://github.com/buresdv/Cork/blob/8de118d07a7e9ddd503da91f3a7539ef1e0cb78c/Cork/AppDelegate.swift#L31
@main
class AppDelegate: FlutterAppDelegate {
    var token: NSObjectProtocol? // disable App Nap - 使用安全的可选值
    private var isActivityStarted = false

    override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return false
    }

    // show window when click from dock icon
    override func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows flag: Bool) -> Bool {
        if !flag {
            for window in sender.windows {
                 if !window.isVisible {
                    window.setIsVisible(true)
                }
                window.makeKeyAndOrderFront(self)
                NSApp.activate(ignoringOtherApps: true)
            }
        }
        return true
    }

    override func applicationDidFinishLaunching(_ notify: Notification) {
        // 延迟初始化 activity token，确保系统完全就绪
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) { [weak self] in
            self?.startAppNapActivity()
        }
    }

    private func startAppNapActivity() {
        guard !isActivityStarted else { return }

        let activityToken = ProcessInfo.processInfo.beginActivity(options: .userInitiated, reason: "Karing VPN Service")
        // 确保 token 有效
        if activityToken != nil {
            token = activityToken
            isActivityStarted = true
        } else {
            NSLog("[Karing] Warning: beginActivity returned nil token")
        }
    }

    override func applicationWillTerminate(_ notify: Notification) {
        // 安全地结束 activity
        if let activityToken = token, isActivityStarted {
            ProcessInfo.processInfo.endActivity(activityToken)
            token = nil
            isActivityStarted = false
        }
    }

    override func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }

    // 添加错误处理
    override func applicationWillUnhide(_ notification: Notification) {
        super.applicationWillUnhide(notification)
        // 确保从后台恢复时 activity 仍然有效
        if !isActivityStarted {
            startAppNapActivity()
        }
    }

    deinit {
        // 防止内存泄漏
        if let activityToken = token, isActivityStarted {
            ProcessInfo.processInfo.endActivity(activityToken)
        }
    }
}
