
Pod::Spec.new do |s|

  s.name         = "ADDeviceTool"
  s.version      = "1.0.2"
  s.summary      = "快速获取Apple设备类型"
  s.homepage     = "https://github.com/tiancanfei/ADDeviceTool"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "天蚕飞" => "bjwltiankong@163.com" }

  #支持平台
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  #仓库地址 (不要使用ssh)
  s.source       = { :git => "https://github.com/tiancanfei/ADDeviceTool.git", :tag => "#{s.version}" }

  #源文件位置
  s.source_files  = "ADDeviceTool/*.swift"

end
