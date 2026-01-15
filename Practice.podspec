Pod::Spec.new do |s|
  s.name         = 'Practice'
  s.version      = '1.0.0'
  s.summary      = 'A practice SDK framework.'
  s.homepage     = 'https://github.com/yourusername/SDKPractice'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Your Name' => 'your@email.com' }
  s.source       = { :git => 'https://github.com/yourusername/SDKPractice.git', :tag => s.version }
  s.ios.deployment_target = '13.0'
  s.source_files  = 'SDKPractice/**/*.{h,m,swift}'
  s.swift_version = '5.0'
end
