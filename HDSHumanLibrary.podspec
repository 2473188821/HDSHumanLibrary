#
# Be sure to run `pod lib lint HDSHumanLibrary.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HDSHumanLibrary'
  s.version          = '1.1.1'
  s.summary          = 'HDSHumanLibrary show human methods.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
 HDSHumanLibrary Add long description of the pod here.
                       DESC

  s.homepage         = 'https://blog.csdn.net/u012198553'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chenfy' => 'chenfy@bokecc.com' }
  s.source           = { :git => 'https://github.com/2473188821/HDSHumanLibrary.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HDSHumanLibrary/Classes/*.{h,m}'
  
  s.vendored_frameworks = 'HDSHumanLibrary/Classes/*.{framework}'

  # s.resource_bundles = {
  #   'HDSHumanLibrary' => ['HDSHumanLibrary/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
