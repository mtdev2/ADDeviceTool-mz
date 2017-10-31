# ADDeviceTool

获取Apple设备信息的方法，经常会用到，没有什么技术含量，但是很麻烦，抽出来供大家使用

# 导入方法
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target 'Example' do
    pod 'ADDeviceTool', '~> 1.0.5'
end
```

# 使用方法
```
ADDeviceTool.getDevieceType()
```
