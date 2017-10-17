Pod::Spec.new do |s|

  s.name                = "CKNavigation"
  s.version             = "0.0.1"
  s.summary             = "A UINavigationController port for Cocoa Development."

  s.homepage            = "https://github.com/Charliekenney23"

  s.license             = { :type => "MIT", :file => "LICENSE" }

  s.author              = { "Charles Kenney" => "Charlesc.kenney@gmail.com" }
  s.social_media_url    = "https://github.com/charliekenney23"

  s.platform            = :osx, "10.12"
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

  s.source              = { :git => "https://github.com/Charliekenney23/ck-navigation-controller.git", :tag => "#{s.version}" }

  s.source_files        = [
    'Sources/**/*.swift'
  ]

end
