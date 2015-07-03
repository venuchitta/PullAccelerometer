//
//  ActivityFindingAlgorithm.swift
//  AccelerometerTest
//
//  Created by S Venu Madhav Chitta on 7/1/15.
//  Copyright (c) 2015 S Venu Madhav Chitta. All rights reserved.
//

import Foundation
import Darwin

class DetectActivity{
    var accData: [AccData] = []
    enum ActivityType{
        case WALKING
        case RUNNING
    }
    
    func detectActivityAlgorithm(accdata: AccData){
        accData.append(accdata)
        if (accData.count == 10){
            findActivity()
            accData.removeAtIndex(0)

        }
    }
    
    func findActivity(){
        var pres: AccData = accData[9]
        var prev: AccData = accData[8]
        var d:Double = ((pres.accX*prev.accX)+(pres.accY*prev.accY)+(pres.accZ*prev.accZ))/(sqrt(pres.accX*pres.accX+pres.accY*pres.accY+pres.accZ*pres.accZ)*sqrt(prev.accX*prev.accX+prev.accY*prev.accY+prev.accZ*prev.accZ))
        pres = accData[8]
        prev = accData[7]
        var d1:Double = ((pres.accX*prev.accX)+(pres.accY*prev.accY)+(pres.accZ*prev.accZ))/(sqrt(pres.accX*pres.accX+pres.accY*pres.accY+pres.accZ*pres.accZ)*sqrt(prev.accX*prev.accX+prev.accY*prev.accY+prev.accZ*prev.accZ))
        println("here")
    }
}
