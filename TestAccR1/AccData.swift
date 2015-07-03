//
//  AccData.swift
//  AccelerometerTest
//
//  Created by S Venu Madhav Chitta on 7/1/15.
//  Copyright (c) 2015 S Venu Madhav Chitta. All rights reserved.
//

import Foundation

class AccData{
    var accX : Double  = 0.0
    var accY : Double  = 0.0
    var accZ : Double  = 0.0
    
    init(x:Double, y:Double, z:Double){
        accX = x
        accY = y
        accZ = z
    }
    func to_s()-> String{
        return "\(accX)   \(accY)   \(accZ)"
    }
}
