//
//  Locator.swift
//  Stormy
//
//  Created by Mac Bellingrath on 6/27/15.
//  Copyright (c) 2015 com.mbellingrath. All rights reserved.
//

import Foundation
import CoreLocation
import MapKit


class Location: CLLocationManager, CLLocationManagerDelegate {
    
    var manager:CLLocationManager!
    
    func findMe () {
        manager.requestAlwaysAuthorization()
        manager.startUpdatingLocation()
        
    }
    
    
}

