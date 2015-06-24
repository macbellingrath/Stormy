//
//  ViewController.swift
//  Stormy
//
//  Created by Mac Bellingrath on 6/24/15.
//  Copyright (c) 2015 com.mbellingrath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var currentHumidityLabel: UILabel?
    @IBOutlet weak var currentPrecipitationLabel: UILabel?
    @IBOutlet weak var currentTemperatureLabel: UILabel?
    
    private let forecastAPIKey = "177c8c724ed1a9bc185d7fff1ce56635"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let baseURL = NSURL(string: "https://api.forecast.io/forecast/\(forecastAPIKey)/")
        
        let forecastURL = NSURL(string: "37.8267,-122.423", relativeToURL: baseURL)
        
        // Use NSURLSession API to fetch data
        let configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
        let session = NSURLSession(configuration: configuration)
        
        // NSURLRequest Object
        let request = NSURLRequest(URL: forecastURL!)
        
        // task
        let dataTask = session.dataTaskWithRequest(request, completionHandler: { (data: NSData!, response: NSURLResponse!,error: NSError!) -> Void in
            println(data)
            
            
        })
        
        dataTask.resume()
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



