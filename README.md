# Instabug iOS SDK
![CocoaPods Compatible](https://img.shields.io/cocoapods/v/Instabug.svg)
![Twitter](https://img.shields.io/badge/twitter-@Instabug-blue.svg)

Instabug is an in-app feedback and bug reporting tool for mobile apps. With just a simple shake, your users or beta testers can [report bugs](https://instabug.com/bug-reporting) or send in-app feedback and the SDK will capture an environment snapshot of your user's device including all console logs, [server-side network requests](https://instabug.com/network-logging) and bug reproduction steps compiling all these details in one organised dashboard to help you debug and fix bugs faster. 

Instabug also provides you with a [reliable crash reporter](https://instabug.com/crash-reporting) that automatically captures a detailed report of the running environment, the different threads’ states, [the steps to reproduce the crash](https://instabug.com/user-steps), and the network request logs. All the data is captured automatically with no need for breadcrumbs, and you can always [reply back to your users](https://instabug.com/in-app-chat) and they will receive your messages within the app.

For more info, visit [Instabug.com](https://www.instabug.com).

## Installation

### SPM

Use `https://github.com/Instabug/Instabug-SP` as a package repository URL

## Usage

1. Import Instabug framework header in your app delegate

    ```swift
    // Swift
    import Instabug
    ```
    
    ```objective-c
    // Objective-C
    #import <Instabug/Instabug.h>
    ```

2. Add the following to your app delegate's application:didFinishLaunchingWithOptions: method.
	
	```swift
	// Swift
	Instabug.start(withToken: <#app token#>, invocationEvents: .shake)
	```
	```objective-c
	// Objective-C
	[Instabug startWithToken:<#app token#> invocationEvents:IBGInvocationEventShake];
	```
	Make sure to replace `app_token` with your application token. Find it [here](https://instabug.com/app/sdk/).

## Notes
Instabug needs access to the microphone and photo library to be able to let users add audio and video attachments. Starting from iOS 10, apps that don’t provide a usage description for those 2 permissions would be rejected when submitted to the App Store.

For your app not to be rejected, you’ll need to add the following 2 keys to your app’s info.plist file with text explaining to the user why those permissions are needed:

* `NSMicrophoneUsageDescription`
* `NSPhotoLibraryUsageDescription`

If your app doesn’t already access the microphone or photo library, we recommend using a usage description like:

* "`<app name>` needs access to the microphone to be able to attach voice notes."
* "`<app name>` needs access to your photo library for you to be able to attach images."

**The permission alert for accessing the microphone/photo library will NOT appear unless users attempt to attach a voice note/photo while using Instabug.**
	
## More

You can also check out our [API Reference](https://instabug.com/public/ios-api-reference/Classes/Instabug.html) for more detailed information about our SDK.
