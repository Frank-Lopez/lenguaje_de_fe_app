#import <Flutter/Flutter.h>
#import <UIKit/UIKit.h>
import Firebase

@interface AppDelegate : FlutterAppDelegate
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
      [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@end
