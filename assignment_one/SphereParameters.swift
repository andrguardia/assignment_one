//
//  SphereParameters.swift
//  assignment_one
//
//  Created by IIT Phys 440 on 1/13/23.
//

import SwiftUI

class SphereParameters: NSObject {
    
    var radius: Double = 0.0
    var areaSphere: Double = 0.0
    var volumeSphere: Double = 0.0
    
    /// This function calculates the area of a Sphere of radius r
    /// - Returns: the area of a sphere
    /// Area = 4*pi*radius^2
    func calculateAreaSphere()->Double{
        areaSphere = Double(4 * Double.pi * pow(radius, 2))
        return areaSphere
    }
    /// This function calculates the volume of a Sphere of radius r
    /// - Returns: the volume of a sphere
    /// Volume = 4/3 * pi * radius^3
    func calculateVolumeSphere()->Double{
        volumeSphere = Double((4.0/3.0) * Double.pi * pow(radius, 3))
        return volumeSphere
    }
    
    
    
}
