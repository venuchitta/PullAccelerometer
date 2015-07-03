//
//  ViewController.swift
//  TestAccR1
//
//  Created by S Venu Madhav Chitta on 7/3/15.
//  Copyright (c) 2015 S Venu Madhav Chitta. All rights reserved.
//

import UIKit
import CoreLocation
import CoreMotion

class ViewController: UIViewController, CLLocationManagerDelegate {
    let motionManager=CMMotionManager()
    let detectAlgo = DetectActivity()
    
    var locationManager: CLLocationManager! = CLLocationManager()


    override func viewDidLoad() {
        super.viewDidLoad()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.delegate = self
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
        trace("here")
       // println(locations.last)
//                motionManager.accelerometerUpdateInterval = 0.2
//                motionManager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue(), withHandler: {(accelerometerData: CMAccelerometerData!, error:NSError!)in
//                    var accData:AccData = AccData(x:accelerometerData.acceleration.x,y:accelerometerData.acceleration.y,z:accelerometerData.acceleration.z)
//                    trace(accData.to_s())
//                    self.detectAlgo.detectActivityAlgorithm(accData)
//                    if (error != nil)
//                    {
//                        println("\(error)")
//                    }
//                })
        
    }


}

