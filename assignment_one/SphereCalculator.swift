//
//  ContentView.swift
//  assignment_one
//
//  Created by IIT Phys 440 on 1/13/23.
//

import SwiftUI

struct SphereCalculator: View {
    @State private var radius: String = ""
    @State private var areaSphere: Double = 0.0
    @State private var volumeSphere: Double = 0.0
    
    
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
        
            Button("Compute!", action:self.calculateSphereParameters())
        }
        
    }
    
    func calculateSphereParameters(){
        let r = Double($radius)
        areaSphere = Double(4 * .pi * pow(r, 2))
        volumeSphere = Double((4/3) * .pi * pow(r, 3))
        return
        }
    }


struct SphereCalculator_Previews: PreviewProvider {
    static var previews: some View {
        SphereCalculator()
    }
}
