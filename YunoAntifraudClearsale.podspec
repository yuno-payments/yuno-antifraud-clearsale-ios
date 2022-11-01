Pod::Spec.new do |s|
    s.name             = 'YunoAntifraudClearsale'
    s.version          = '0.0.1'
    s.summary          = 'A short description of YunoSDK.'
  
    s.description      = <<-DESC
  
    An SDK to gather device information and load it to ClearSale.

  
                         DESC
  
    s.homepage         = 'https://www.y.uno/'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'Lautaro Pinto' => 'lautaro.pinto@y.uno' }
    s.source           = { :http => 'https://github.com/yuno-payments/yuno-antifraud-clearsale-ios/releases/download/' + s.version.to_s + '/YunoAntifraudClearsale.xcframework.zip' }
  
    s.ios.deployment_target = '13.0'
    s.swift_version         = '5.4'
    s.platform              = :ios, '13.0'
  
    s.requires_arc          = true
  
    s.vendored_frameworks = 'YunoAntifraudClearsale.xcframework'
      
    s.frameworks = 'UIKit'
    s.frameworks = 'Combine'
    s.xcconfig = { 'SWIFT_INCLUDE_PATHS' => ['${PODS_XCFRAMEWORKS_BUILD_DIR}/YunoAntifraudClearsale'] }
    s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
  end