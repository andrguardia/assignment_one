//
//  CubeParameters.swift
//  assignment_one
//
//  Created by IIT Phys 440 on 1/19/23.
//

import SwiftUI

class BoxParameters: NSObject {
    
    var areaBox: Double = 0.0
    var volumeBox: Double = 0.0
    var height: Double = 0.0
    var length: Double = 0.0
    var width: Double = 0.0
    
    
    
    /// This function calculates the area of a box
    /// - Returns: the area of a box
    /// Area = 2*length*width + 2*length*height + 2*height*width
    func calculateAreaBox()->Double{
        areaBox = 2*length*width + 2*length*height + 2*height*width
        return areaBox
    }
    /// This function calculates the volume of a box
    /// - Returns: the volume of the box
    /// Volume = length*height*width
    func calculateVolumeBox()->Double{
        volumeBox = height*length*width
        return volumeBox
    }
    
    
    
    
    
    
}
