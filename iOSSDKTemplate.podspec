Pod::Spec.new do |s|
  s.name             = 'iOSSDKTemplate'
  s.version          = '16.0.0'
  s.swift_versions = ['5.0']
  s.summary          = 'OpenWeb SDK'
  s.description      = 'This SDK allows you to integrate OpenWeb into your iOS app.'
  s.homepage        = "https://www.openweb.com"
  s.screenshots     = 'https://user-images.githubusercontent.com/607917/35287547-4076605c-006b-11e8-9674-a1c9e4f8f681.png', 'https://user-images.githubusercontent.com/607917/35287551-423452be-006b-11e8-96e9-7bf7a3ae27b6.png', 'https://user-images.githubusercontent.com/607917/35287552-4259dc5a-006b-11e8-9a27-c14b37a5a32b.png'
  s.license         = { :type => 'CUSTOM', :file => 'LICENSE' }
  s.author          = { 'Alon Haiut' => 'alon.h@openweb.com' }
  s.platform        = :ios
  s.ios.deployment_target = '12.0'
  # Setting pod `BUILD_LIBRARY_FOR_DISTRIBUTION` to `YES`
  s.pod_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }

# the Pre-Compiled Framework:
  s.source = { :http => "file:///Users/alonshprung/Desktop/iOSLibraryTemplate/iOSLibraryTemplate/testPod/iOSSDKTemplate.xcframework.zip", :type => "zip"}
  s.ios.vendored_frameworks = 'iOSSDKTemplate.xcframework'
  s.dependency 'RxSwift', '~> 6.5'
  s.dependency 'RxCocoa', '~> 6.5'

end
