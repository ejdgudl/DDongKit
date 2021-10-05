Pod::Spec.new do |spec|
  spec.name         = "DDongKit"
  spec.version      = "1.1.1"
  spec.summary      = "DDongKit Library"
  spec.description  = "This is the library that will be used in my project."
  spec.homepage     = "https://github.com/ejdgudl/DDongKit"
  spec.license      = "MIT"
  spec.author             = { "ejdgudl" => "ejdgudl@gmail.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/ejdgudl/DDongKit.git", :tag => spec.version.to_s }
  spec.source_files  = "DDongKit/**/*.{swift}"
  spec.swift_versions = "5.0"
  spec.dependency "SDWebImage"
end
