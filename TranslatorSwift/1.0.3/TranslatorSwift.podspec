Pod::Spec.new do |spec|

  spec.platform = :ios
  spec.name         = "TranslatorSwift"
  spec.version      = "1.0.3"
  spec.requires_arc = true
  spec.summary      = "A short description of TranslatorSwift."
  spec.description  = <<-DESC
  A much much longer description of TranslatorSwift.
                      DESC
  spec.homepage     = 'https://github.com/mmhmobilearts/TranslatorSwift'
  spec.license = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Mohamad" => "h.mohammad@smartmobiletech.org" }
  spec.source = { 
    :git => 'https://github.com/mmhmobilearts/TranslatorSwift.git', 
    :tag => spec.version.to_s 
  }
  spec.framework = 'UIKit'
  spec.source_files  = "TranslatorSwift/**/*.{swift}"
  spec.resources = "TranslatorSwift/**/*.{storyboard,xib,xcassets,lproj,png}"
  spec.swift_version = '5'
  spec.ios.deployment_target = '14.0'

end
