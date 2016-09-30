//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation






// Any double type has now the radians computed property available to it thanks to this extension.

// For Example 
// let number = 5.0
// number.radians

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}



struct Coordinate{
    
    var latitude: Double
    var longitude: Double
    
    
    
    var isInNorthernHemisphere: Bool {//return latitude >0} shortcut
        if latitude > 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInSouthernHemisphere: Bool {
        if latitude < 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInWesternHemisphere: Bool {
        if longitude > 0 {
            return true
        } else {
            return false
        }
    }
    
    var isInEasternHemisphere: Bool {
        if longitude < 0 {
            return true
        } else {
            return false
        }
    }
    
    
    
    
    init(latitude: Double, longitude: Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    
    func distance(to coordinate: Coordinate) -> Int {
        let distanceInKM = acos(sin(coordinate.latitude.radians) * sin(latitude.radians) + cos(coordinate.latitude.radians) * cos(latitude.radians) * cos(coordinate.longitude.radians-longitude.radians)) * 6371000 / 1000
        
        return Int(distanceInKM)
    }
    
    
}







