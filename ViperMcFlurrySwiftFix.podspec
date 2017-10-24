Pod::Spec.new do |s|
    s.name = "ViperMcFlurrySwiftFix"
    s.version = "1.0.0"
    s.summary = "Fix allows using ViperMcFlurry from Swift code ("moduleInput" problem, see Demo application)."
    s.homepage = "https://github.com/ladeiko/ViperMcFlurrySwiftFix"
    s.license = { :type => "CUSTOM", :file => "LICENSE" }
    s.author = { "Siarhei Ladzeika" => "sergey.ladeiko@gmail.com" }
    s.platform = :ios, "9.0"
    s.source = { :git => "https://github.com/ladeiko/ViperMcFlurrySwiftFix.git", :tag => "#{s.version}" }
    s.source_files = "Classes/**/*.{swift}"
    s.frameworks = "UIKit"
    s.requires_arc = true
    s.dependency 'SwiftSelfAware'
    s.dependency 'ViperMcFlurry'
end
