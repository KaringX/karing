import Foundation
import SwiftUI

@main
struct Application: App {
    @UIApplicationDelegateAdaptor private var appDelegate: ApplicationDelegate
    var body: some Scene {
        WindowGroup {
            DashboardView()
        }
    }
}
