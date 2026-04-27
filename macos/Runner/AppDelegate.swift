import Cocoa
import FlutterMacOS

@main
class AppDelegate: FlutterAppDelegate {
    override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return false
    }

    // show window when click from dock icon
    override func applicationShouldHandleReopen(_ sender: NSApplication, hasVisibleWindows _: Bool) -> Bool {
        // Always try to bring an app window to front. Relying only on
        // `hasVisibleWindows` can miss cases where the window is visible
        // but not key/frontmost (for example after app switching).
        let windows = sender.windows.filter { !$0.isExcludedFromWindowsMenu }
        let targetWindow = windows.first
            ?? sender.mainWindow
            ?? sender.keyWindow
            ?? sender.windows.first

        if let targetWindow {
            if targetWindow.isMiniaturized {
                targetWindow.deminiaturize(nil)
            }
            if !targetWindow.isVisible {
                targetWindow.setIsVisible(true)
            }
            targetWindow.makeKeyAndOrderFront(self)
            targetWindow.orderFrontRegardless()
        }

        NSApp.activate(ignoringOtherApps: true)
        return true
    }

    override func applicationDidFinishLaunching(_ notify: Notification) {
    }

    override func applicationWillTerminate(_ notify: Notification) {
    }

    override func applicationSupportsSecureRestorableState(_ app: NSApplication) -> Bool {
        return true
    }
}
