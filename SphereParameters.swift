//
//  SphereParameters.swift
//  assignment_one
//
//  Created by IIT Phys 440 on 1/13/23.
//

import SwiftUI
import Foundation

class SphereParameters: NSObject {
    @State private var radius: Double = 0.0
    private var areaSphere: Double = 0.0
    private var volumeSphere: Double = 0.0
    
    func calculateSphereParameters(){
        areaSphere = 4 * .pi * pow(radius, 2);
        volumeSphere = (4/3) * .pi * pow(radius, 3);
    }

}
