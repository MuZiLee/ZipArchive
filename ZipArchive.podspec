Pod::Spec.new do |s|
  s.name     = 'ZipArchive'
  s.version  = '0.1.1'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/MuZiLee/ZipArchive'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author   = { 'MuZiLee' => 'admin@sanshengit.com' }
  s.source   = { :git => 'https://github.com/MuZiLee/ZipArchive.git', :tag => "#{s.version}" }
  
  s.ios.deployment_target = '8.0'

  s.source_files        = 'ZipArchive.{h,m}'  
  
  s.subspec 'minizip' do |ss|
    ss.source_files  = 'minizip/*'
    ss.requires_arc = false
  end
  

  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES', 'OTHER_LDFLAGS' => '-ObjC', 'ENABLE_BITCODE' => 'NO' }
  s.requires_arc = false
  s.static_framework = true
  
  s.frameworks   = ['UIKit']

  # s.dependency 'GPUImage', '0.1.5'

end
