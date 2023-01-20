//
//  CubeParameters.swift
//  assignment_one
//
//  Created by IIT Phys 440 on 1/19/23.
//

import SwiftUI

class CubeParameters: NSObject {
    
    var radius: Double = 0.0
    var areaCube: Double = 0.0
    var volumeCube: Double = 0.0
    
    func calculateAreaCube()->Double{
        areaCube = Double(6.0 * pow(2.0*radius, 2))
        return areaCube
    }
    
    func calculateVolumeCube()->Double{
        volumeCube = Double(pow(2.0 * radius, 3))
        return volumeCube
    }
}
