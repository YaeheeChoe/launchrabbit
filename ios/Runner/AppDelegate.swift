import UIKit
import Flutter

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    Thread.sleep(forTimeInterval: 2.5) // 3초 동안 대기
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
