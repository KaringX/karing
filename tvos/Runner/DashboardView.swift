import Foundation
import KeychainSwift
import Libbox
import Network
import QRCode
import Swifter
import SwiftUI

class Agreement: Codable {
    var agreed: Bool = false
}
 
class Settings: Codable {
    var alwaysOn: Bool = false
}

class VpnServiceCoreConfigClashApi: Codable {
    var external_controller: String = ""
    var secret: String = ""
}
 
class VpnServiceCoreConfigExperimental: Codable {
    var clash_api: VpnServiceCoreConfigClashApi?
}

class VpnServiceCoreConfig: Codable {
    var experimental: VpnServiceCoreConfigExperimental?
}

class VpnServiceConfig: Codable {
    var control_port: Int32 = 0
    var base_dir: String = ""
    var work_dir: String = ""
    var cache_dir: String = ""
    var core_path: String = ""
    var log_path: String = ""
    var err_path: String = ""
    var id: String = ""
    var version: String = ""
    var name: String = ""
    var secret: String = ""
    // var install_refer: String = ""
    var expired_time: Int64 = 0
    var disconnect_after_sleep_seconds: Int32 = 0
    var sentry_minversion: String = ""
}

@MainActor
public struct DashboardView: View {
    private static var version = ""
    private static let bundleIdentifier = "com.nebula.karing.karingService"
    private static let groupIdentifier = "group.com.nebula.karing"
    private static let defaultSharedDirectory: URL! = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: groupIdentifier)!
        .appendingPathComponent("Library", isDirectory: true)
        .appendingPathComponent("Caches", isDirectory: true)
    private static let agreeFile = defaultSharedDirectory.appendingPathComponent("agree.json", isDirectory: false)
    private static let configFile = defaultSharedDirectory.appendingPathComponent("service.json", isDirectory: false)
    private static let settingsFile = defaultSharedDirectory.appendingPathComponent("settings.json", isDirectory: false)
    private static let coreFile = defaultSharedDirectory.appendingPathComponent("service_core.json", isDirectory: false)
    private static let coreLogFile = DashboardView.defaultSharedDirectory.appendingPathComponent("service_core.log", isDirectory: false)
    private static let coreErrorLogFile = DashboardView.defaultSharedDirectory.appendingPathComponent("service_error.log", isDirectory: false)
    private static let cacheDirectory = DashboardView.defaultSharedDirectory.appendingPathComponent("cache", isDirectory: true)
   
    private static var uuid: String = ""
    private static var config = VpnServiceConfig()

    @State private var agreed: Bool = false
    @Environment(\.scenePhase) var scenePhase
    @FocusState private var foucs: Bool
    @State private var hasCore: Bool = false
    @State private var isConnected: Bool = false
    @State private var qrcodeUrl: String = ""
    
    @State private var alertShow: Bool = false
    @State private var alertTitle: String = ""
    @State private var alertContent: String = ""
    
    @State private var isSetting: Bool = false
    @State private var isDownloading: Bool = false
    @State private var url: String = ""
    
    @State private var alertShow2: Bool = false
    @State private var alertTitle2: String = ""
    @State private var alertContent2: String = ""
    
    @State private var alwayOn: Bool = false
    var session: URLSession!
    
    private var httpPort: UInt16 = 4040
    private let httpServer: HttpServer = .init() // https://github.com/httpswift/swifter

    public init() {
        let main = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
        let build = Bundle.main.infoDictionary!["CFBundleVersion"] as! String
        DashboardView.version = "\(main).\(build)"
        
        DashboardView.uuid = UUID().uuidString
        DashboardView.uuid.replace("-", with: "")
        DashboardView.uuid = DashboardView.uuid.lowercased()
        
        DashboardView.loadConfig()
        
        VpnServiceHandler.shared.bundleIdentifier = DashboardView.bundleIdentifier
        VpnServiceHandler.shared.configFilePath = DashboardView.configFile.path()
        VpnServiceHandler.shared.uiServerAddress = DashboardView.config.name
        VpnServiceHandler.shared.uiLocalizedDescription = DashboardView.config.name
        
        let sessionConfig = URLSessionConfiguration.default
        sessionConfig.httpAdditionalHeaders = ["User-Agent": "Karing/\(DashboardView.version) platform/tvos sing-box 1.12.0"]
        
        session = URLSession(configuration: sessionConfig, delegate: nil, delegateQueue: .main)
    }
   
    public var body: some View {
        VStack {
            if !agreed {
                VStack {
                    Spacer()
                    Text("userAgreement".localized)
                    Spacer()
                    Button("agree".localized) {
                        Task {
                            agreed = true
                            DashboardView.saveAgree(agree: agreed)
                        }
                    }
                    Spacer()
                }
            } else {
                HStack {
                    if hasCore {
                        Button {
                            Task {
                                onTap()
                            }
                        } label: {
                            if !isConnected {
                                Image(systemName: "play.fill").resizable().frame(width: 200, height: 200).aspectRatio(contentMode: .fit)
                            } else {
                                Image(systemName: "stop.fill").resizable().frame(width: 200, height: 200).aspectRatio(contentMode: .fit)
                            }
                        }.focused($foucs)
                    }
                    VStack {
                        Text("scanQrPart1".localized)
                        Text("scanQrPart2".localized)
                        shareLinkView.padding().frame(width: 400, height: 400).aspectRatio(contentMode: .fit)
                    }
                    
                    Button {
                        Task {
                            isSetting = true
                        }
                    } label: {
                        Image(systemName: "gear.circle.fill").resizable().frame(width: 200, height: 200).aspectRatio(contentMode: .fit)
                    }.sheet(isPresented: $isSetting, content: {
                        Spacer()
                        VStack {
                            Spacer()
                            HStack {
                                Spacer()
                                Toggle(isOn: $alwayOn) {
                                    Text("alwayOn".localized)
                                }
                                Spacer()
                            }
                           
                            HStack {
                                Spacer()
                                TextField("", text: $url, prompt: Text("profileUrl".localized))
                                    .multilineTextAlignment(.trailing)
                                    .disabled(isDownloading)
                                Button {
                                    if let uri = URL(string: url) {
                                        Task {
                                            isDownloading = true
                                            let task = session.dataTask(with: uri) { data, _, error in
                                                if let error = error {
                                                    print("Download Error: \(uri): \(error.localizedDescription)")
                                                    DispatchQueue.main.async {
                                                        isDownloading = false
                                                        alertTitle2 = "downloadError".localized
                                                        alertContent2 = error.localizedDescription
                                                        alertShow2 = true
                                                    }
                                                } else if let data = data {
                                                    DispatchQueue.main.async {
                                                        isDownloading = false
                                                        let content0 = String(decoding: data, as: UTF8.self)
                                                        var err = DashboardView.updateConfigFrom(content: content0)
                                                        hasCore = !hasCore
                                                        hasCore = FileManager.default.fileExists(atPath: DashboardView.coreFile.path())
                                                        if err != nil {
                                                            if content0.count > 256 {
                                                                err! += "\r" + content0.prefix(256)
                                                            } else {
                                                                err! += "\r" + content0
                                                            }
                                                            alertTitle2 = "updateError".localized
                                                            alertContent2 = err!
                                                            alertShow2 = true
                                                        } else {
                                                            isSetting = false
                                                        }
                                                    }
                                                }
                                            }
                                            task.resume()
                                        }
                                    } else {
                                        alertTitle2 = "error".localized
                                        alertContent2 = "invalidURL".localized
                                        alertShow2 = true
                                    }
                                } label: {
                                    if isDownloading {
                                        ProgressView()
                                            .progressViewStyle(CircularProgressViewStyle())
                                            .scaleEffect(2.0, anchor: .center)
                                            .onAppear {
                                                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {}
                                            }
                                    } else {
                                        Image(systemName: "arrow.right")
                                    }
                                }
                                .foregroundColor(.accentColor)
                                .disabled(isDownloading)
                                Spacer()
                            }
                            Text(DashboardView.version)
                            Spacer()
                        }
                        .onAppear {
                            alwayOn = DashboardView.getAlwaysOn()
                        }
                        .onDisappear {
                            DashboardView.setAlwaysOn(enable: alwayOn)
                        }.alert(isPresented: $alertShow2) {
                            Alert(title: Text(alertTitle2), message: Text(alertContent2), dismissButton: .default(Text("OK")))
                        }
                    })
                }
            }
        }
        .frame(maxHeight: .infinity, alignment: .center)
        .onAppear {
            if !agreed {
                agreed = DashboardView.getAgree()
            }
            if httpServer.routes.count == 0 {
                httpServer.get["/"] = { _ in
                    HttpResponse.ok(.text(""))
                }
                httpServer.post["/sync-upload"] = { request in
                    let uuid0 = request.queryParams.filter { $0.0 == "uuid" }.first?.1
                    let type = request.queryParams.filter { $0.0 == "type" }.first?.1
                    if uuid0 != DashboardView.uuid {
                        return HttpResponse.ok(.text("Please re-scan qrcode"))
                    }
                    let body = String(decoding: request.body, as: UTF8.self)
                    if type == "json" {
                        let err = DashboardView.updateConfigFrom(content: body)
                        hasCore = !hasCore
                        hasCore = true
                        if err != nil {
                            alertTitle = "updateError".localized
                            alertContent = err!
                            alertShow = true
                        }
                    }

                    return HttpResponse.ok(.text(""))
                }
                httpServer.get["/delete-core-config"] = { _ in
                    DispatchQueue.main.async {
                        do {
                            try FileManager.default.removeItem(at: DashboardView.coreFile)
                        } catch {
                            print("delete-core-config exception:\(error.localizedDescription)")
                        }
                        stop()
                        hasCore = FileManager.default.fileExists(atPath: DashboardView.coreFile.path())
                    }

                    return HttpResponse.ok(.text(""))
                }
                httpServer.get["/get-file-content"] = { request in
                    var content = ""
                    let filename = request.queryParams.filter { $0.0 == "filename" }.first?.1
                    do {
                        let filepath = DashboardView.defaultSharedDirectory.appendingPathComponent(filename!, isDirectory: false)
                        content = try String(contentsOfFile: filepath.path(), encoding: String.Encoding.utf8)
                    } catch {
                        print("get-file-content exception:\(error.localizedDescription)")
                    }

                    return HttpResponse.ok(.text(content))
                }
            }
        }.onDisappear {}.onChange(of: scenePhase) { _, newPhase in
            if newPhase == .active {
                foucs = true
                do {
                    try httpServer.start(httpPort, forceIPv4: true)
                } catch {
                    print("httpServer.start exception:\(error.localizedDescription)")
                }
                
                try? FileManager.default.createDirectory(at: DashboardView.defaultSharedDirectory, withIntermediateDirectories: true)
                hasCore = FileManager.default.fileExists(atPath: DashboardView.coreFile.path())
                if hasCore {
                    updateState()
                } else {
                    stop()
                }
            } else if newPhase == .background {
                httpServer.stop()
            }
        }.alert(isPresented: $alertShow) {
            Alert(title: Text(alertTitle), message: Text(alertContent), dismissButton: .default(Text("OK")))
        }
    }

    private var foregroundColor: CGColor {
        return UIColor.label.cgColor
    }

    private var shareLinkView: some View {
        QRCodeViewUI(
            content: getUrl(),
            errorCorrection: .low,
            foregroundColor: foregroundColor,
            backgroundColor: CGColor(gray: 1.0, alpha: 0.0)
        )
    }

    private func onTap() {
        if isConnected {
            stop()
            return
        }
        start()
    }

    private func stop() {
        let onStop: VpnResult = { _ in
            print("onStop:")
            isConnected = false
        }
        let onAlwaysOn: VpnResult = { _ in
            print("onAlwaysOn:")
            VpnServiceHandler.shared.stop(result: onStop)
        }
       
        VpnServiceHandler.shared.setAlwaysOn(enable: false, result: onAlwaysOn)
    }

    private func start() {
        let error = DashboardView.saveConfig()
        if error != nil {
            print("write error:\(DashboardView.configFile): \(String(describing: error))")
            alertTitle = "saveError".localized
            alertContent = error!
            alertShow = true
            return
        }
        do {
            try FileManager.default.removeItem(at: DashboardView.coreLogFile)
        } catch {
            print("delete-file exception:\(error.localizedDescription)")
        }
        do {
            try FileManager.default.removeItem(at: DashboardView.coreErrorLogFile)
        } catch {
            print("delete-file exception:\(error.localizedDescription)")
        }
        /* do {
             let text = try String(contentsOfFile: DashboardView.coreFile.path(), encoding: String.Encoding.utf8)
             print(text)
         } catch {
         } */
        let onAlwaysOn: VpnResult = { _ in
            print("onAlwaysOn:")
        }
        let onStart: VpnResult = { err in
            isConnected = err == nil
            print("onStart:\(String(describing: err))")
            if err != nil {
                let er = err as! String
                alertTitle = "vpnStartError".localized
                alertContent = er
                alertShow = true
            } else {
                VpnServiceHandler.shared.setAlwaysOn(enable: DashboardView.getAlwaysOn(), result: onAlwaysOn)
            }
        }
        let onInstall: VpnResult = { err in
            print("onInstall:\(String(describing: err))")
            if err == nil {
                VpnServiceHandler.shared.start(timeoutInSeconds: 30, result: onStart)
            } else {
                let er = err as! String
                alertTitle = "vpnInstallError".localized
                alertContent = er
                alertShow = true
            }
        }
        let onIsInstall: VpnResult = { installed in
            print("onIsInstall:\(String(describing: installed))")
            let ins = installed as? Bool
            if ins != true {
                VpnServiceHandler.shared.install(result: onInstall)
            } else {
                VpnServiceHandler.shared.start(timeoutInSeconds: 30, result: onStart)
            }
        }
        VpnServiceHandler.shared.isInstall(result: onIsInstall)
    }

    private func updateState() {
        let onGetState: VpnStatusResult = { state in
            isConnected = state == .connecting || state == .connected
        }
        VpnServiceHandler.shared.getState(result: onGetState)
    }

    private func getUrl()->String {
        let ips = DashboardView.getLocalIPAddress()
        let coreVersion = "1.12.0"
        return "karing://tvos?ips=\(ips.joined(separator: ","))&port=\(httpPort)&uuid=\(DashboardView.uuid)&cport=\(DashboardView.config.control_port)&secret=\(DashboardView.config.secret)&version=\(DashboardView.version)&coreversion=\(coreVersion)"
    }

    static func getAgree()->Bool {
        var agree = Agreement()
        do {
            let content = try String(contentsOfFile: DashboardView.agreeFile.path(), encoding: String.Encoding.utf8)
            let jsonData: Data = content.data(using: String.Encoding.utf8)!
            agree = try JSONDecoder().decode(Agreement.self, from: jsonData)
        } catch {
            print("getAgree \(DashboardView.agreeFile) exception:\(error.localizedDescription)")
        }
        return agree.agreed
    }

    static func saveAgree(agree: Bool) {
        let agreement = Agreement()
        agreement.agreed = agree
        do {
            let content = try String(data: JSONEncoder().encode(agreement), encoding: .utf8)!
            try content.write(to: DashboardView.agreeFile, atomically: true, encoding: String.Encoding.utf8)
            
            // let text = try String(contentsOfFile: DashboardView.agreeFile.path(), encoding: String.Encoding.utf8)
            // print(text)
        } catch {
            print("saveAgree \(DashboardView.agreeFile) exception:\(error.localizedDescription)")
        }
    }

    static func getAlwaysOn()->Bool {
        var settings = Settings()
        do {
            let content = try String(contentsOfFile: DashboardView.settingsFile.path(), encoding: String.Encoding.utf8)
            let jsonData: Data = content.data(using: String.Encoding.utf8)!
            settings = try JSONDecoder().decode(Settings.self, from: jsonData)
        } catch {
            print("getAlwaysOn \(DashboardView.settingsFile) exception:\(error.localizedDescription)")
        }
        
        return settings.alwaysOn
    }

    static func setAlwaysOn(enable: Bool) {
        let settings = Settings()
        settings.alwaysOn = enable
        do {
            let content = try String(data: JSONEncoder().encode(settings), encoding: .utf8)!
            try content.write(to: DashboardView.settingsFile, atomically: true, encoding: String.Encoding.utf8)
            
            // let text = try String(contentsOfFile: DashboardView.settingsFile.path(), encoding: String.Encoding.utf8)
            // print(text)
        } catch {
            print("setAlwaysOn \(DashboardView.settingsFile) exception:\(error.localizedDescription)")
        }
    }

    static func loadConfig() {
        do {
            let content = try String(contentsOfFile: DashboardView.configFile.path(), encoding: String.Encoding.utf8)
            let jsonData: Data = content.data(using: String.Encoding.utf8)!
            DashboardView.config = try JSONDecoder().decode(VpnServiceConfig.self, from: jsonData)
        } catch {
            print("loadConfig \(DashboardView.configFile) exception:\(error.localizedDescription)")
        }

        DashboardView.config.base_dir = DashboardView.defaultSharedDirectory.path()
        DashboardView.config.work_dir = DashboardView.defaultSharedDirectory.path()
        DashboardView.config.cache_dir = DashboardView.cacheDirectory.path()
        DashboardView.config.core_path = DashboardView.coreFile.path()
        DashboardView.config.log_path = DashboardView.coreLogFile.path()
        DashboardView.config.err_path = DashboardView.coreErrorLogFile.path()
        DashboardView.config.version = DashboardView.version
        DashboardView.config.name = "Karing"
        DashboardView.config.expired_time = 0
        DashboardView.config.disconnect_after_sleep_seconds = 0
        DashboardView.config.sentry_minversion = ""
        if DashboardView.config.id == "" {
            let karingDevId = "KaringDevIdTvOS"
            let keychain = KeychainSwift()
            DashboardView.config.id = keychain.get(karingDevId) ?? ""
            if DashboardView.config.id == "" {
                DashboardView.config.id = UUID().uuidString
                keychain.set(karingDevId, forKey: DashboardView.config.id)
            }
        }
    }

    static func saveConfig()->String? {
        do {
            let content = try String(data: JSONEncoder().encode(DashboardView.config), encoding: .utf8)!
            try content.write(to: DashboardView.configFile, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            print("saveConfig \(DashboardView.configFile) exception:\(error.localizedDescription)")
            return "saveConfig \(DashboardView.configFile) exception:\(error.localizedDescription)"
        }
        return nil
    }

    static func updateConfigFrom(content: String)->String? {
        do {
            let jsonData: Data = content.data(using: String.Encoding.utf8)!
            let coreConfig = try JSONDecoder().decode(VpnServiceCoreConfig.self, from: jsonData)
            try content.write(to: DashboardView.coreFile, atomically: true, encoding: String.Encoding.utf8)
            
            if coreConfig.experimental != nil && coreConfig.experimental!.clash_api != nil {
                let external_controller = coreConfig.experimental!.clash_api!.external_controller.split(separator: ":")
                if external_controller.count >= 2 {
                    DashboardView.config.control_port = Int32(external_controller[external_controller.count - 1]) ?? 0
                } else {
                    DashboardView.config.control_port = 0
                }
                DashboardView.config.secret = coreConfig.experimental!.clash_api!.secret
            } else {
                DashboardView.config.secret = ""
                DashboardView.config.control_port = 0
            }
           
            _ = DashboardView.saveConfig()
        } catch {
            print("update config exception:\(error.localizedDescription)")
            return error.localizedDescription
        }
        return nil
    }

    private static func getLocalIPAddress()->[String] {
        var addresses: [String] = []
        var ifaddr: UnsafeMutablePointer<ifaddrs>? = nil
        guard getifaddrs(&ifaddr) == 0 else {
            return addresses
        }
        guard let firstAddr = ifaddr else {
            return addresses
        }

        for ifptr in sequence(first: firstAddr, next: { $0.pointee.ifa_next }) {
            let interface = ifptr.pointee
            let addrFamily = interface.ifa_addr.pointee.sa_family
            if addrFamily == UInt8(AF_INET) || addrFamily == UInt8(AF_INET6) {
                let name = String(cString: interface.ifa_name)
                if name.hasPrefix("en") {
                    var hostName = [CChar](repeating: 0, count: Int(NI_MAXHOST))
                    getnameinfo(interface.ifa_addr, socklen_t(interface.ifa_addr.pointee.sa_len), &hostName, socklen_t(hostName.count), nil, socklen_t(0), NI_NUMERICHOST)
                    var address = String(cString: hostName)
                    if let index = address.firstIndex(of: "%") {
                        address = String(address[..<index])
                    }
                    if address.count > 0 && address.isIP() && address.hasPrefix("169.254") == false && interface.ifa_flags & UInt32(IFF_LOOPBACK) == 0 {
                        addresses.append(address)
                    }
                }
            }
        }
        freeifaddrs(ifaddr)
        // addresses.append("169.254.237.206")
        return addresses
    }
}
