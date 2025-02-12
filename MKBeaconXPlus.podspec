#
# Be sure to run `pod lib lint MKBeaconXPlus.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MKBeaconXPlus'
  s.version          = '1.0.5'
  s.summary          = 'A short description of MKBeaconXPlus.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/BeaconX-Pro/iOS-SDK'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'aadyx2007@163.com' => 'aadyx2007@163.com' }
  s.source           = { :git => 'https://github.com/BeaconX-Pro/iOS-SDK.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  
  s.resource_bundles = {
    'MKBeaconXPlus' => ['MKBeaconXPlus/Assets/*.png']
  }
   
   s.subspec 'ApplicationModule' do |ss|
     ss.source_files = 'MKBeaconXPlus/Classes/ApplicationModule/**'
     ss.dependency 'MKBaseModuleLibrary'
   end
   
   s.subspec 'ConnectManager' do |ss|
     ss.source_files = 'MKBeaconXPlus/Classes/ConnectManager/**'
     
     ss.dependency 'MKBaseModuleLibrary'
     
     ss.dependency 'MKBeaconXPlus/SDK-BXP'
   end
   
   s.subspec 'CTMediator' do |ss|
     ss.source_files = 'MKBeaconXPlus/Classes/CTMediator/**'
     
     s.dependency 'CTMediator'
   end
   
   s.subspec 'SDK-BXP' do |ss|
     ss.source_files = 'MKBeaconXPlus/Classes/SDK-BXP/**'
     ss.dependency 'MKBaseBleModule'
   end
   
   s.subspec 'Target' do |ss|
     ss.source_files = 'MKBeaconXPlus/Classes/Target/**'
     ss.dependency 'MKBeaconXPlus/Functions'
   end
   
   s.subspec 'DatabaseManager' do |ss|
     ss.source_files = 'MKBeaconXPlus/Classes/DatabaseManager/**'
     
     s.dependency 'FMDB'
   end
   
   s.subspec 'Functions' do |ss|
     
     ss.subspec 'AboutPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/AboutPage/Controller/**'
       end
     end

     ss.subspec 'AccelerationPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/AccelerationPage/Controller/**'
         ssss.dependency 'MKBeaconXPlus/Functions/AccelerationPage/Model'
         ssss.dependency 'MKBeaconXPlus/Functions/AccelerationPage/View'

       end
       sss.subspec 'Model' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/AccelerationPage/Model/**'
       end
       sss.subspec 'View' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/AccelerationPage/View/**'
       end
     end

     ss.subspec 'ExportDataPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/ExportDataPage/Controller/**'
         ssss.dependency 'MKBeaconXPlus/Functions/ExportDataPage/View'

       end
       sss.subspec 'View' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/ExportDataPage/View/**'
       end
     end

     ss.subspec 'HTConfigPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/HTConfigPage/Controller/**'
         ssss.dependency 'MKBeaconXPlus/Functions/HTConfigPage/Model'
         ssss.dependency 'MKBeaconXPlus/Functions/HTConfigPage/View'

         ssss.dependency 'MKBeaconXPlus/Functions/ExportDataPage/Controller'
       end
       sss.subspec 'Model' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/HTConfigPage/Model/**'
       end
       sss.subspec 'StorageTriggerViews' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/HTConfigPage/StorageTriggerViews/**'
       end
       sss.subspec 'View' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/HTConfigPage/View/**'
         ssss.dependency 'MKBeaconXPlus/Functions/HTConfigPage/StorageTriggerViews'
       end
     end

     ss.subspec 'ScanPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/ScanPage/Controller/**'
         
         ssss.dependency 'MKBeaconXPlus/Functions/ScanPage/Model'
         ssss.dependency 'MKBeaconXPlus/Functions/ScanPage/Adopter'

         ssss.dependency 'MKBeaconXPlus/Functions/TabBarPage/Controller'
         ssss.dependency 'MKBeaconXPlus/Functions/AboutPage/Controller'
       end
       sss.subspec 'Model' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/ScanPage/Model/**'
       end
       sss.subspec 'Adopter' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/ScanPage/Adopter/**'
         
         ssss.dependency 'MKBeaconXPlus/Functions/ScanPage/Model'
       end
     end

     ss.subspec 'SettingPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/SettingPage/Controller/**'
         ssss.dependency 'MKBeaconXPlus/Functions/SettingPage/Model'

         ssss.dependency 'MKBeaconXPlus/Functions/SensorConfigPage/Controller'
         ssss.dependency 'MKBeaconXPlus/Functions/QuickSwitchPage/Controller'
       end
       sss.subspec 'Model' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/SettingPage/Model/**'
       end
     end

     ss.subspec 'SlotConfigPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/SlotConfigPage/Controller/**'
         
         ssss.dependency 'MKBeaconXPlus/Functions/SlotConfigPage/Model'
         ssss.dependency 'MKBeaconXPlus/Functions/SlotConfigPage/View'
       end
       sss.subspec 'Model' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/SlotConfigPage/Model/**'
       end
       sss.subspec 'View' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/SlotConfigPage/View/**'
       end
     end

     ss.subspec 'SlotPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/SlotPage/Controller/**'
         ssss.dependency 'MKBeaconXPlus/Functions/SlotPage/Model'

         ssss.dependency 'MKBeaconXPlus/Functions/SlotConfigPage/Controller'
       end
       sss.subspec 'Model' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/SlotPage/Model/**'
       end
     end

     ss.subspec 'TabBarPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/TabBarPage/Controller/**'
         
         ssss.dependency 'MKBeaconXPlus/Functions/TabBarPage/Model'

         ssss.dependency 'MKBeaconXPlus/Functions/SlotPage/Controller'
         ssss.dependency 'MKBeaconXPlus/Functions/SettingPage/Controller'
       end
       sss.subspec 'Model' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/TabBarPage/Model/**'
       end
     end
     
     ss.subspec 'SensorConfigPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/SensorConfigPage/Controller/**'
         
         ssss.dependency 'MKBeaconXPlus/Functions/AccelerationPage'
         ssss.dependency 'MKBeaconXPlus/Functions/HTConfigPage'
         ssss.dependency 'MKBeaconXPlus/Functions/LightSensorPage'
       end
     end
     
     ss.subspec 'QuickSwitchPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/QuickSwitchPage/Controller/**'
         
         ssss.dependency 'MKBeaconXPlus/Functions/QuickSwitchPage/Model'
       end
       sss.subspec 'Model' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/QuickSwitchPage/Model/**'
       end
     end
     
     ss.subspec 'LightSensorPage' do |sss|
       sss.subspec 'Controller' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/LightSensorPage/Controller/**'
         
         ssss.dependency 'MKBeaconXPlus/Functions/LightSensorPage/View'
         ssss.dependency 'MKBeaconXPlus/Functions/LightSensorPage/Model'
       end
       sss.subspec 'View' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/LightSensorPage/View/**'
       end
       sss.subspec 'Model' do |ssss|
         ssss.source_files = 'MKBeaconXPlus/Classes/Functions/LightSensorPage/Model/**'
       end
     end

     ss.dependency 'MKBeaconXPlus/ConnectManager'
     ss.dependency 'MKBeaconXPlus/SDK-BXP'
     ss.dependency 'MKBeaconXPlus/CTMediator'
     ss.dependency 'MKBeaconXPlus/DatabaseManager'
     
     ss.dependency 'MKBaseModuleLibrary'
     ss.dependency 'MKCustomUIModule'
     ss.dependency 'MKBeaconXCustomUI'
     ss.dependency 'HHTransition'
     ss.dependency 'MLInputDodger'
     ss.dependency 'iOSDFULibrary'
   end
end
