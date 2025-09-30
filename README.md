
# YunoAntifraudClearsale

[![Version](https://img.shields.io/cocoapods/v/antifraud-clearsale.svg?style=flat)](https://cocoapods.org/pods/antifraud-clearsale)

[![License](https://img.shields.io/cocoapods/l/YunoSDK.svg?style=flat)](https://cocoapods.org/pods/YunoSDK)

[![Platform](https://img.shields.io/cocoapods/p/YunoSDK.svg?style=flat)](https://cocoapods.org/pods/YunoSDK)

[![iOS Minimum Deploy Target - 14.0](https://img.shields.io/static/v1?label=iOS+Minimum+Deploy+Target&message=14.0&color=2ea44f)](https://)


An SDK to gather device information and load it to ClearSale.

---

## Installation (Swift Package Manager - SPM)

YunoAntifraudClearsale is installed exclusively via **Swift Package Manager (SPM)**.

### 1. Swift Package Manager (SPM)

This is the recommended method for versions **1.3.0 and later**.

1.  In Xcode, go to **File > Add Packages...**
2.  Enter the ClearSale repository URL:
    ```
    [https://github.com/yuno-payments/yuno-antifraud-clearsale-ios](https://github.com/yuno-payments/yuno-antifraud-clearsale-ios)
    ```
3.  Ensure you select **version `1.3.0`** or higher.

### 2. CocoaPods

You can also use CocoaPods for version **`1.3.0`**. Add the following line to your `Podfile`:

```ruby
pod 'YunoAntifraudClearsaleSDK', '~> 1.3.0'
```
### Core SDK Dependency

This package also requires you to add the main Yuno SDK as a dependency. Repeat the SPM installation process with the following URL:

https://github.com/yuno-payments/yuno-sdk-ios


---

## Usage

The minimum required version is **iOS 14.0**.

### Fraud Provider Configuration

To integrate **YunoAntifraudClearsale**, you must configure it as a fraud provider within the `YunoSDK` **before** calling any payment initiation method (`startPaymentLite` or `startPayment`).

Make sure to import both modules and then use the static method `Yuno.setFraudProviders(with:)`:

```swift
import YunoSDK
import YunoAntifraudClearsale // Import the provider class

// Configure Clearsale as a fraud provider.
// You must pass an instance of the class inside an array.
Yuno.setFraudProviders(with: [YunoAntifraudClearsale()]) 

// Once the provider is configured, you can initiate the payment process.
// Yuno.startPaymentLite(...) or Yuno.startPayment(...)
```
## Author  
Yuno Payments Inc.


## License
YunoAntifraudClearsale is available under the MIT license. See the LICENSE file for more info.
