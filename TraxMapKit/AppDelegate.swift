//
//  AppDelegate.swift
//  Trax
//
//  Created by qingjiezhao on 7/6/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import UIKit

struct GPXURL {
    static let Notification = "GPXURL Radio Station"
    static let Key = "GPXURL URL Key"
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    
    func application(application: UIApplication, handleOpenURL url: NSURL) -> Bool{
        println("url = \(url)")
        let center = NSNotificationCenter.defaultCenter()
        let notification = NSNotification(name:GPXURL.Notification,object:self,userInfo:[GPXURL.Key:url])
        center.postNotification(notification)
        
        return true
    }

}
