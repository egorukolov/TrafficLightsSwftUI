//
//  ColorCircle.swift
//  TrafficLightsSeiftUI
//
//  Created by Egor Ukolov on 21.07.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import SwiftUI

struct ColorCircles: View {
    var body: some View {
        VStack {
            Color(.red)
                
                .frame(width: 140, height: 140)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 5))
                .shadow(radius: 10)
                .padding(.bottom, 15)
                .contrast(0.4)
                .brightness(0.2)
            
            Color(.yellow)
                .frame(width: 140, height: 140)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 5))
                .shadow(radius: 10)
                .padding(.bottom, 15)
                .contrast(0.4)
                .brightness(0.2)
            
            Color(.green)
                .frame(width: 140, height: 140)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 5))
                .shadow(radius: 10)
                .contrast(0.4)
                .brightness(0.2)
        }
    
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircles()
    }
}
