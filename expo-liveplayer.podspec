require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name           = 'expo-liveplayer'
  s.version        = package['version']
  s.summary        = package['description']
  s.description    = package['description']
  s.author         = package['author']
  s.homepage       = 'https://github.com/goliajp/expo-liveplayer'
  s.source         = { :git => "https://github.com/goliajp/expo-liveplayer.git", :tag => "develop" }
  s.ios.deployment_target = "10.0"
  s.subspec "RCTNodeMediaClient" do |ss|
    ss.source_files  = "ios/RCTNodeMediaClient/*.{h,m}"
    s.static_framework = true
  end

  s.dependency "React"
  s.dependency "NodeMediaClient", '3.1.8'
  s.default_subspec = "RCTNodeMediaClient"
end
