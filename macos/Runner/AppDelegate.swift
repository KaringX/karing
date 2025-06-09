import Cocoa
import FlutterMacOS

@main
class AppDelegate: FlutterAppDelegate {
    var token: NSObjectProtocol! // disable App Nap
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
        token = ProcessInfo.processInfo.beginActivity(options: .userInitiated, reason: "Karing VPN Service")
    }

    override func applicationWillTerminate(_ notify: Notification) {
        if let activityToken = token {
            ProcessInfo.processInfo.endActivity(activityToken)
            token = nil
        }
    }

    override func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
}
