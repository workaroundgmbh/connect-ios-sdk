Pod::Spec.new do |s|
  s.name         = "ProGloveConnectSDK"
  s.version      = "2.6.0"
  s.summary      = "Connect SDK allows you to easily add support for the barcode scanner to your App"
  s.description  = <<-DESC
Connect SDK allows you to easily add support for the barcode scanner to your App!
                   DESC
  s.license = { :file => 'LICENSE', :type => 'ProGlove' }
  s.homepage     = "https://proglove.com/"
  s.author             = { "Workaround GmbH" => "service@proglove.de" }
  s.ios.deployment_target = "13.0"
  s.swift_version = "5.0"
  s.frameworks = 'CoreBluetooth'

  s.source = { :http => "https://dl.cloudsmith.io/QQ43WPa2Y7VlFUM3/proglove/markconnectiossdk-prod/raw/names/ConnectSDK-2.6.0-cocoapods/versions/2.6.0/ConnectSDK-2.6.0-cocoapods.zip?accept_eula=8", 
               :sha256 => "b6983493f28828a580c9236966a7f4bbf9b268517516e9a34cd8bfca794993e4",
               :type => "zip" }

  s.dependency 'iOSMcuManagerLibrary', '~> 1.6.0'

  s.ios.vendored_frameworks = 'ConnectSDK.xcframework',
  'OpenSSL.xcframework',
  'AWSMobileClientXCF.xcframework',
  'AWSCore.xcframework',
  'AWSAuthCore.xcframework',
  'AWSCognitoIdentityProvider.xcframework',
  'AWSCognitoIdentityProviderASF.xcframework',
  'AWSIoT.xcframework'
end
