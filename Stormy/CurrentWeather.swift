//
//  CurrentWeather.swift
//  Stormy
//
//  Created by Mac Bellingrath on 6/24/15.
//  Copyright (c) 2015 com.mbellingrath. All rights reserved.
//

import Foundation


struct CurrentWeather {
    
    let temperature: Int
    let humidity: Int
    let precipProbability: Int
    let summary: String
    
    init(weatherDictionary:[String: AnyObject]) {
        temperature = weatherDictionary["temperature"] as! Int
        let humidityFloat = weatherDictionary["humidity"] as! Double
        humidity = Int(humidityFloat * 100)
        let precipDouble = weatherDictionary["precipProbability"] as! Double
        precipProbability = Int(precipDouble * 100)
        summary = weatherDictionary["summary"] as! String
        
    }
    
}

