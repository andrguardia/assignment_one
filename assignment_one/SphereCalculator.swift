//
//  ContentView.swift
//  assignment_one
//
//  Created by IIT Phys 440 on 1/13/23.
//

import SwiftUI

struct Calculator: View {
    @State  var radius: String = ""
    @State  var areaSphere: Double = 0.0
    @State  var volumeSphere: Double = 0.0
    @State  var areaCube: Double = 0.0
    @State  var volumeCube: Double = 0.0
    
    
    var body: some View {
        VStack {
            Text("Area and Volume Calculator")
                .font(.largeTitle)
            
            HStack {
                Text("Radius [m]:")
                TextField("Enter radius", text: $radius)
            }
            
            HStack {Text("Sphere Area [m^2]:")
                Text("\(self.areaSphere, specifier: "%.2f")")}
            
            HStack {Text("Sphere Volume [m^3]:")
                Text("\(self.volumeSphere, specifier: "%.2f")")}
            
            HStack {Text("Cube Area [m^2]:")
                Text("\(self.areaCube, specifier: "%.2f")")}
            
            HStack {Text("Cube Volume [m^3]:")
                Text("\(self.volumeCube, specifier: "%.2f")")}
        
            Button("Compute!", action: {self.calculateParameters()})
        }
        
    }
    
    func calculateParameters(){
        let r = Double(radius)!
        var sphereParams = SphereParameters()
        var cubeParams = CubeParameters()
        
        sphereParams.radius = r
        cubeParams.radius = r
        
        areaSphere = sphereParams.calculateAreaSphere()
        volumeSphere = sphereParams.calculateVolumeSphere()
        areaCube = cubeParams.calculateAreaCube()
        volumeCube = cubeParams.calculateVolumeCube()
        
        return
        }
    }


struct Calculator_Previews: PreviewProvider {
    static var previews: some View {
        Calculator()
    }
}
