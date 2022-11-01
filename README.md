
# YunoAntifraudClearsale

  

[![Version](https://img.shields.io/cocoapods/v/antifraud-clearsale.svg?style=flat)](https://cocoapods.org/pods/antifraud-clearsale)

[![License](https://img.shields.io/cocoapods/l/antifraud-clearsale.svg?style=flat)](https://cocoapods.org/pods/antifraud-clearsale)

[![Platform](https://img.shields.io/cocoapods/p/antifraud-clearsale.svg?style=flat)](https://cocoapods.org/pods/antifraud-clearsale)

An SDK to gather device information and load it to ClearSale.

## Installation

YunoAntifraudClearsale is available through [CocoaPods](https://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby

pod 'YunoAntifraudClearsale', '~> 0.0.0'

```

## Configuration

Instructions for configuring the framework in the project:

Open the project editor and select the project, on the "Build Settings" tab add the "-ObjC" flag to the "Other Linker Flags" setting.

Add the following entries to the destination project Info.plist file:

```
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSExceptionDomains</key>
    <dict>
        <key>clearsale.com.br</key>
        <dict>
            <key>NSTemporaryExceptionMinimumTLSVersion</key>
            <string>TLSv1.0</string>
        </dict>
    </dict>
</dict>
```

## Usage

YunoAntifraudClearsale minimum required version is iOS 13.0

First, you'll need to get your ClearSale iOS API key. Then initialize by importing YunoAntifraudClearsale and adding the following to your application delegate:


> Note: If your app is using a UISceneDelegate you will need to put your YunoAntifraudClearsale initialisation code into your SceneDelegate

  

```swift

import YunoSDK

YunoClearsale.initialize(apiKey: "<Your iOS API Key>")

```

Before using the sdk make sure to import AppTrackingTransparency.

```swift
import AppTrackingTransparency
...
if #available(iOS 14, *) {
    ATTrackingManager.requestTrackingAuthorization { _ in
    }
}
```
  
## Functions

To start the collection of data on the device and screen, call the following method:

 
```swift
YunoClearsale.collectDeviceInformation()
```


## Author  
Yuno Payments Inc.


## License
YunoAntifraudClearsale is available under the MIT license. See the LICENSE file for more info.
