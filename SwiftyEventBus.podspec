Pod::Spec.new do |s|
  s.name             = 'SwiftyEventBus'
  s.version          = '0.1.2'
  s.summary          = 'SwiftyEventBus is a publish/subscribe event bus for iOS and Swift.'
  s.homepage         = 'https://github.com/Maru-zhang/SwiftyEventBus'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Maru-zhang' => 'maru-zhang@foxmail.com' }
  s.source           = { :git => 'https://github.com/Maru-zhang/SwiftyEventBus.git', :tag => s.version.to_s }

  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"
  s.watchos.deployment_target = "2.0"
  
  s.swift_version = '4.0'
  s.default_subspecs = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'SwiftyEventBus/Core/**/*.swift'
  end

  s.subspec 'Rx' do |ss|
    ss.source_files = 'SwiftyEventBus/Rx/**/*.swift'
    ss.dependency 'SwiftyEventBus/Core'
    ss.dependency 'RxSwift'
  end
end
