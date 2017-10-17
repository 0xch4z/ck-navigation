Pod::Spec.new do |s|

  s.name             = "CKNavigation"
  s.version          = "0.0.1"
  s.summary          = "A UINavigationController port for Cocoa Development."

  s.homepage         = "https://github.com/charliekenney23/ck-navigation-controller"

  s.license          = { :type => "MIT", :file => "LICENSE" }

  s.author           = { "Charles Kenney" => "Charlesc.kenney@gmail.com" }
  s.social_media_url = "https://github.com/charliekenney23"

  s.platform         = :osx, "10.12"

  s.source           = { :git => "http://github.com/charliekenney23/CKNavigation.git", :tag => "#{s.version}" }

  s.source_files     = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files    = "Classes/Exclude"

end
