platform :ios, '12.0'

workspace 'NewsPaper'

project 'Domain/Domain.xcodeproj'
project 'Network/Network.xcodeproj'
project 'Model/Model.xcodeproj'
project 'DataModule/DataModule.xcodeproj'
project 'Design/Design.xcodeproj'
project 'NewsPaper.xcodeproj'

target 'Model' do project 'Model/Model.xcodeproj'
  use_frameworks!
end

target 'Network' do project 'Network/Network.xcodeproj'
  use_frameworks!

end

target 'DataModule' do project 'DataModule/DataModule.xcodeproj'
  use_frameworks!
end

target 'Domain' do project 'Domain/Domain.xcodeproj'
  use_frameworks!
end

target 'Design' do project 'Design/Design.xcodeproj'
  use_frameworks!
end

abstract_target 'SharedPods' do
  use_frameworks!
  
  target 'NewsPaper' do
  end
  
end
