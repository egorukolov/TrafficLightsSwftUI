//
//  ContentView.swift
//  TrafficLightsSeiftUI
//
//  Created by Egor Ukolov on 21.07.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numbers = 0
    
    var body: some View {
        
        VStack {
            ZStack {
                ColorCircles()
                    .padding(.top, 40)
                
                if numbers == 1 {
                    RedCircle()
                } else if numbers == 2 {
                    YellowCircle()
                } else if numbers == 3 {
                    GreenCircle()
                }
            }
            
            Spacer()
            
            Button(action: {
                
                self.numbers += 1
                
                if self.numbers > 3 {
                    self.numbers = 1
                }
                
            }) {
                
                if numbers == 0 {
                    Text("Start")
                        .font(.largeTitle)
                        .padding(.bottom, 70)
                    
                } else {
                    Text("Next")
                        .font(.largeTitle)
                        .padding(.bottom, 70)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
