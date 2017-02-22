# Uncomment this line to define a global platform for your project
# Uncomment this line if you're using Swift


platform :ios, '9.0'

target ‘ORCTesting’ do
    
    use_frameworks!


    pod 'TesseractOCRiOS', '4.0.0'


    
 end
    
post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end





