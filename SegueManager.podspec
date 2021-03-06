Pod::Spec.new do |s|
  s.name         = "SegueManager"
  s.version      = "3.0.0"
  s.license      = "MIT"

  s.summary      = "Perform storyboard segues with closures, in Swift"

  s.authors           = { "Tom Lokhorst" => "tom@lokhorst.eu" }
  s.social_media_url  = "https://twitter.com/tomlokhorst"
  s.homepage          = "https://github.com/tomlokhorst/SegueManager"

  s.source          = { :git => "https://github.com/tomlokhorst/SegueManager.git", :tag => s.version }
  s.requires_arc    = true

  s.osx.deployment_target = '10.10'
  s.ios.deployment_target = '8.0'

  s.subspec "iOS" do |ss|
    ss.ios.deployment_target = '8.0'
    ss.source_files = "src/ios/SegueManager.swift", "src/ios/ViewControllers.swift"
  end

  s.subspec "R.swift" do |ss|
    ss.ios.deployment_target = '8.0'
    ss.source_files = "src/ios/SegueManager+Rswift.swift"
    ss.dependency "SegueManager/iOS"
    ss.dependency "R.swift.Library"
  end

  s.subspec "OSX" do |ss|
    ss.osx.deployment_target = '10.10'
    ss.source_files = "src/osx/SegueManager.swift"
  end

end
