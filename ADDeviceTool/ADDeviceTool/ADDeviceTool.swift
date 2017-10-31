//
//  ADDeviceTool.swift
//  ADDeviceTool
//
//  Created by andehang on 2017/10/24.
//  Copyright © 2017年 andehang. All rights reserved.
//

import Foundation

struct ADDeviceTool {
    //MARK: -  获取设备类型
    //deviceType设备类型获取地址https://www.theiphonewiki.com/wiki/Models
    
    public static func getDevieceType() -> String
    {
        var systemInfo = utsname()
        
        uname(&systemInfo)
        
        let deviceString = withUnsafePointer(to: &systemInfo.machine, { (ptr) -> String? in
            let deviceChars = unsafeBitCast(ptr, to: UnsafePointer<CChar>.self)
            return String.init(cString: deviceChars, encoding: .utf8)
        })
        
        let deviceType = [//AirPods(耳机)
                          "AirPods1,1" :  "AirPods",
                          //Apple TV
                          "AppleTV2,1" :  "Apple TV (2nd generation)",
                          "AppleTV3,1" :  "Apple TV (3rd generation)",
                          "AppleTV3,2" :  "Apple TV (3rd generation)",
                          "AppleTV5,3" :  "Apple TV (4th generation)",
                          "AppleTV6,2" :  "Apple TV 4K",
                          //Apple Watch(手表)
                          "Watch1,1" :  "Apple Watch (1st generation)",
                          "Watch1,2" :  "Apple Watch (1st generation)",
                          "Watch2,6" :  "Apple Watch Series 1",
                          "Watch2,7" :  "Apple Watch Series 1",
                          "Watch2,3" :  "Apple Watch Series 2",
                          "Watch2,4" :  "Apple Watch Series 2",
                          "Watch3,1" :  "Apple Watch Series 3",
                          "Watch3,2" :  "Apple Watch Series 3",
                          "Watch3,3" :  "Apple Watch Series 3",
                          "Watch3,4" :  "Apple Watch Series 3",
                          //HomePod(音响)
                          "AudioAccessory1,1" :  "HomePod",
                          //iPad
                          "iPad1,1"   :  "iPad1",
                          "iPad2,1"   :  "iPad2",
                          "iPad2,2"   :  "iPad2",
                          "iPad2,3"   :  "iPad2",
                          "iPad2,4"   :  "iPad2",
                          "iPad3,1"   :  "iPad3",
                          "iPad3,2"   :  "iPad3",
                          "iPad3,3"   :  "iPad3",
                          "iPad3,4"   :  "iPad4",
                          "iPad3,5"   :  "iPad4",
                          "iPad3,6"   :  "iPad4",
                          "iPad4,1"   :  "iPad Air",
                          "iPad4,2"   :  "iPad Air",
                          "iPad4,3"   :  "iPad Air",
                          "iPad5,3"   :  "iPad Air 2",
                          "iPad5,4"   :  "iPad Air 2",
                          "iPad6,7"   :  "iPad Pro (12.9-inch)",
                          "iPad6,8"   :  "iPad Pro (12.9-inch)",
                          "iPad6,3"   :  "iPad Pro (9.7-inch)",
                          "iPad6,4"   :  "iPad Pro (9.7-inch)",
                          "iPad6,11"  :  "iPad (5th generation)",
                          "iPad6,12"  :  "iPad (5th generation)",
                          "iPad7,1"   :  "iPad Pro (12.9-inch, 2nd generation)",
                          "iPad7,2"   :  "iPad Pro (12.9-inch, 2nd generation)",
                          "iPad7,3"   :  "iPad Pro (10.5-inch)",
                          "iPad7,4"   :  "iPad Pro (10.5-inch)",
                          //iPad mini
                          "iPad2,5"   :  "iPad mini",
                          "iPad2,6"   :  "iPad mini",
                          "iPad2,7"   :  "iPad mini",
                          "iPad4,4"   :  "iPad mini 2",
                          "iPad4,5"   :  "iPad mini 2",
                          "iPad4,6"   :  "iPad mini 2",
                          "iPad4,7"   :  "iPad mini 3",
                          "iPad4,8"   :  "iPad mini 3",
                          "iPad4,9"   :  "iPad mini 3",
                          "iPad5,2"   :  "iPad mini 4",
                          //iPhone(手机)
                          "iPhone1,1" :  "iPhone",
                          "iPhone1,2" :  "iPhone3G",
                          "iPhone2,1" :  "iPhone3GS",
                          "iPhone3,1" :  "iPhone4",
                          "iPhone3,2" :  "iPhone4",
                          "iPhone3,3" :  "iPhone4",
                          "iPhone4,1" :  "iPhone4S",
                          "iPhone5,1" :  "iPhone5",
                          "iPhone5,2" :  "iPhone5",
                          "iPhone5,3" :  "iPhone5C",
                          "iPhone5,4" :  "iPhone5C",
                          "iPhone6,1" :  "iPhone5S",
                          "iPhone6,2" :  "iPhone5S",
                          "iPhone7,2" :  "iPhone6",
                          "iPhone7,1" :  "iPhone6 Plus",
                          "iPhone8,1" :  "iPhone6s",
                          "iPhone8,2" :  "iPhone6s Plus",
                          "iPhone10,3" :  "iPhone X",
                          "iPhone10,6" :  "iPhone X",
                          //iPod
                          "iPod1,1"   :  "iPod touch",
                          "iPod2,1"   :  "iPod touch (2nd generation)",
                          "iPod3,1"   :  "iPod touch (3rd generation)",
                          "iPod4,1"   :  "iPod touch (4th generation)",
                          "iPod5,1"   :  "iPod touch (5th generation)",
                          "iPod7,1"   :  "iPod touch (6th generation)",
                          ]
        
        
        if let deviceStringKey = deviceString
        {
            if deviceStringKey.hasPrefix("x86")
            {
                return "iPhone模拟器，Mac"
            }
            else
            {
                if let deviceTypeString = deviceType[deviceStringKey]
                {
                    return deviceTypeString
                }
            }
        }

        return "iPhone新机型"
        
    }
}
