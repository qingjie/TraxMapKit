//
//  MKGPX.swift
//  Trax
//
//  Created by qingjiezhao on 7/7/15.
//  Copyright (c) 2015 qingjiezhao. All rights reserved.
//

import MapKit

extension GPX.Waypoint : MKAnnotation {
    var coordinate : CLLocationCoordinate2D {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
    
    var title : String! {
        return name
    }
    
    var subtitle:String! {
        return info
    }
    
    var thumbnailURL: NSURL? {
            return getImageURLofType("thumbnail")
    }
    
    var imageURL : NSURL? {
        return getImageURLofType("large")
    }
    
    private func getImageURLofType( type: String) -> NSURL? {
        for link in links {
            if link.type == type {
                return link.url
            }
        }
        return nil
    }
    
}
