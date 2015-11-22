//: Playground - noun: a place where people can play

import Cocoa
import Foundation

//let forecastAPIKey = "177c8c724ed1a9bc185d7fff1ce56635"
//let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(forecastAPIKey)/")
//let forecastURL = NSURL(string: "37.8267,-122.423", relativeToURL: baseURL)


protocol flyable {
    var canFly:Bool { get }
    
}

penguin: flyable {
var canFly = true

}
