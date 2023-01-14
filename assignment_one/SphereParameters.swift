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
    
    
    func calculateAreaSphere()->Double{
        areaSphere = Double(4 * Double.pi * pow(radius, 2))
        return areaSphere
    }

    func calculateVolumeSphere()->Double{
        volumeSphere = Double((4.0/3.0) * Double.pi * pow(radius, 3))
        return volumeSphere
    }
    
    
    
}
