platform :ios, '15.0'

use_frameworks!

workspace 'EarlGrey2Experiment.xcworkspace'

target 'HelperBundle' do
  project 'EarlGrey2Experiment/EarlGrey2Experiment.xcodeproj'
  pod 'EarlGreyApp', '~> 2.2.0'
end

target 'EarlGrey2ExperimentUITests' do
  project 'EarlGrey2Experiment/EarlGrey2Experiment.xcodeproj'
  pod 'EarlGreyTest', '~> 2.2.0'
end

post_install do |installer|
   # 'AppFramework' is installed by 'EarlGreyApp'
   # and must be weakly linked to lazy load symbols
   # as 'eDistantObjectBundle' is injected into the app
   targets_to_weaklink=['eDistantObjectBundle']
   frameworks_to_weaklink=['AppFramework']
   
   targets_to_weaklink.map!{|t| t="Pods-#{t}"}
   installer.pods_project.targets.each do |target|
     next unless targets_to_weaklink.include?(target.name)
     
     target.build_configurations.each do |config|
       base_config_reference = config.base_configuration_reference
       unless base_config_reference.nil?
         xcconfig_path = base_config_reference.real_path
         xcconfig = File.read(xcconfig_path)
         frameworks_to_weaklink.each do |framework|
           xcconfig = xcconfig.gsub(/-framework "#{framework}"/, "-weak_framework \"#{framework}\"")
         end
         File.open(xcconfig_path, "w") { |file| file << xcconfig }
       end
     end
   end
 end
