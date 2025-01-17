platform :ios, '12.0'

workspace 'NewsPaper'

project 'Design/Design.xcodeproj'
project 'Domain/Domain.xcodeproj'
project 'NewsPaper.xcodeproj'

target 'Design' do project 'Design/Design.xcodeproj'
  use_frameworks!
end
target 'Domain' do project 'Domain/Domain.xcodeproj'
  use_frameworks!
end

abstract_target 'SharedPods' do
  use_frameworks!
  
  target 'NewsPaper' do
  end
  
end
