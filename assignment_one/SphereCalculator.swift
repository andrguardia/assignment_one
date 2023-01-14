//
//  ContentView.swift
//  assignment_one
//
//  Created by IIT Phys 440 on 1/13/23.
//

import SwiftUI

struct SphereCalculator: View {
    @State  var radius: String = ""
    @State  var areaSphere: Double = 0.0
    @State  var volumeSphere: Double = 0.0
    
    
    var body: some View {
        VStack {
            Text("Sphere Calculator")
                .font(.largeTitle)
            
            HStack {
                Text("Radius:")
                TextField("Enter radius", text: $radius)
            }
            
            HStack {Text("Area:")
                Text("\(self.areaSphere, specifier: "%.2f")")}
            
            HStack {Text("Volume:")
                Text("\(self.volumeSphere, specifier: "%.2f")")
        }
        
            Button("Compute!", action: {self.calculateSphereParameters()})
        }
        
    }
    
    func calculateSphereParameters(){
        let r = Double(radius)!
        
       var sphereParams = SphereParameters()
        
        sphereParams.radius = r
        
        areaSphere = sphereParams.calculateAreaSphere()
        volumeSphere = sphereParams.calculateVolumeSphere()
        return
        }
    }


struct SphereCalculator_Previews: PreviewProvider {
    static var previews: some View {
        SphereCalculator()
    }
}
