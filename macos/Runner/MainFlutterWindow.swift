import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
    override func awakeFromNib() {
        // 添加安全检查，确保 window 有效
        guard self.contentView != nil else {
            NSLog("[Karing] Error: contentView is nil in awakeFromNib")
            return
        }

        let flutterViewController = FlutterViewController()
        let windowFrame = self.frame

        // 安全地设置 contentViewController
        self.contentViewController = flutterViewController
        self.setFrame(windowFrame, display: false)
        self.setContentSize(NSSize(width: 400, height: 700))

        // 注册插件，使用可选绑定确保安全
        if let registry = flutterViewController as? FlutterPluginRegistry {
            RegisterGeneratedPlugins(registry: registry)
        } else {
            NSLog("[Karing] Warning: FlutterViewController does not conform to FlutterPluginRegistry")
        }

        super.awakeFromNib()
    }
}
