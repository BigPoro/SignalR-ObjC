Pod::Spec.new do |s|
  s.default_subspec = 'Core'
  s.name         = "SignalR-ObjC"
  s.version      = "2.0.5"
  s.summary      = "Objective-C Client for the SignalR Project works with iOS and Mac."
  s.homepage     = "https://github.com/DyKnow/SignalR-ObjC"
  s.license      = 'MIT'
  s.author       = { "Alex Billingsley" => "abillingsley@dyknow.com" }
  s.source   	 = { :git => 'https://github.com/BigPoro/SignalR-ObjC.git', :tag => '2.0.5' }
  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.requires_arc = true

  s.subspec 'Core' do |sp|
    sp.source_files = 'Framework/*.{h}', 'SignalR.Client/**/*.{h,m}'
    pod 'AFNetworking/NSURLSession', '2.6.3'
    pod 'AFNetworking/Reachability', '2.6.3'
    pod 'AFNetworking/Security', '2.6.3'
    pod 'AFNetworking/Serialization', '2.6.3'
    pod 'AFNetworking/NSURLConnection', '2.6.3'
    sp.dependency 'SocketRocket', '0.5.1'
  end

  s.subspec 'CocoaLumberjack' do |sp|
    sp.dependency 'CocoaLumberjack', '~>1.0'
    sp.dependency 'SignalR-ObjC/Core'
  end
end
