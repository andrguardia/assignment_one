//
//  CubeParameters.swift
//  assignment_one
//
//  Created by IIT Phys 440 on 1/20/23.
//

import SwiftUI

class CubeParameters: BoxParameters {
    
    /// This function calculates the area of a cube from its side value
    /// - Returns: the area of the cube
    /// Area = 6*height
    /// where length=height=width
    func calculateAreaCube()->Double{
        
        height = length
        width = height
        areaBox = calculateAreaBox()
        return areaBox
    }
    
    /// This function calculates the volume of a cube fromits side value
    /// - Returns: the volume of a cube
    /// Volume = length*height*width = height^3
    /// where length=height=width
    
    func calculateVolumeCube()->Double{
        
        height = length
        width = height
        volumeBox = calculateVolumeBox()
        
        return volumeBox
    }

}
