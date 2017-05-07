#
# Be sure to run `pod lib lint SimpleRoundedButton.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SimpleRoundedButton'
  s.version          = '1.0'
  s.summary          = 'Simple UIButton with support for @IBInspectable attributes'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    SimpleRoundedButton is a UIButton subclass that uses @IBInspectable attributes to allow easy customization of border properties, colors and corner radius, directly from the Storyboard. The corner radius is automatically constrained to half the button height or width. To achieve completely rounded sides, just set the value to something like 100. For instant preview, it also supports @IBDesignable.
                       DESC

  s.homepage         = 'https://github.com/MasterCarl/SimpleRoundedButton'
  s.screenshots     = 'https://github.com/MasterCarl/SimpleRoundedButton/raw/master/screenshots/xcode.png?raw=true', 'https://github.com/MasterCarl/SimpleRoundedButton/raw/master/screenshots/1.png?raw=true'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MasterCarl' => 'dev@mastercarl.com' }
  s.source           = { :git => 'https://github.com/MasterCarl/SimpleRoundedButton.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.3'

  s.source_files = 'SimpleRoundedButton/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SimpleRoundedButton' => ['SimpleRoundedButton/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
