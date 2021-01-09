source 'https://github.com/CocoaPods/Specs'

platform :ios, '12.0'

target 'iosSwiftProjectTemplate' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  inhibit_all_warnings!

  # Pods for iosSwiftProjectTemplate

  # Rx stuffs
  pod 'RxSwift', '~> 5.1'
  pod 'RxCocoa', '~> 5.1'
  pod 'RxAnimated', '~> 0.7'
  pod 'RxReachability', '~> 1.0.0'
  pod 'ReactorKit', '~> 2.1.1'
  pod 'RxDataSources', '~> 4.0'

  # Networking
  pod 'ReachabilitySwift'
  pod 'Alamofire', '~> 5.4.1'
  pod 'Moya', '~> 14.0.0'

  # Media
  pod 'Kingfisher', '~> 6.0.0'

  # UI
  pod 'SkeletonView', '~> 1.11.0'
  pod 'SnapKit', '~> 5.0.1'
  pod 'SwiftMessages', '~> 8.0.5'
  pod 'TransitionButton', '~> 0.5.3'

  # Utilities
  pod 'R.swift', '~> 5.3.1'
  pod 'IQKeyboardManager', '~> 6.5.0'
  pod 'SwiftyJSON', '~> 5.0.0'
  pod 'SwiftValidator', :git => 'https://github.com/jpotts18/SwiftValidator.git', :tag => '5.0.0'
  pod 'SwiftKeychainWrapper', '~> 4.0.1'
  pod 'Then', '~> 2.7.0'
  pod 'CryptoSwift', '~> 1.3.8'
  pod 'GRDB.swift/SQLCipher', '~> 5.2.0'
  pod 'SQLCipher', '~> 4.0'
  pod 'RxGRDB/SQLCipher', '~> 1.0.0'

  # DI
  pod 'Swinject', '~> 2.7.1'
  pod 'SwinjectAutoregistration', '~> 2.7.0'
  
  target 'UnitTests' do
    inherit! :search_paths
    # Testing
    pod 'Quick', '~> 3.0.0'
    pod 'RxBlocking', '~> 5'
    pod 'RxTest', '~> 5'
    pod 'RxNimble', subspecs: ['RxBlocking', 'RxTest']
    pod 'Swinject', '~> 2.7.1'
    pod 'SwinjectStoryboard', '~> 2.2.0'
    pod 'SwiftyJSON', '~> 5.0.0'

  end
end

post_install do | installer |
  # Copy acknowledgements to the Settings.bundle
  require 'fileutils'

  pods_acknowledgements_path = 'Pods/Target Support Files/Pods/Pods-Acknowledgements.plist'
  settings_bundle_path = Dir.glob("**/*Settings.bundle*").first

  if File.file?(pods_acknowledgements_path)
    puts 'Copying acknowledgements to Settings.bundle'
    FileUtils.cp_r(pods_acknowledgements_path, "#{settings_bundle_path}/Acknowledgements.plist", :remove_destination => true)
  end

  # Check for memory leak on runtime
  installer.pods_project.targets.each do |target|
    if target.name == 'RxSwift'
      target.build_configurations.each do |config|
        if config.name.include? 'Debug'
          config.build_settings['OTHER_SWIFT_FLAGS'] ||= ['-D', 'TRACE_RESOURCES']
        end
      end
    end
  end

  # Removing dependency pod deployment targets 
  # so that they will inherit podfile platform
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
    end
  end
end
