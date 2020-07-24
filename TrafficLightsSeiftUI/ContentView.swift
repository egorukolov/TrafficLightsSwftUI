//
//  ContentView.swift
//  TrafficLightsSeiftUI
//
//  Created by Egor Ukolov on 21.07.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
    
    @State private var buttonTitle = "START"
    
//    @State private var redLightState = 0.3
//    @State private var yellowLightState = 0.3
//    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.red
    
    private func nextColor() {
        
//        let lightIsOn = 1.0
//        let lightIsOff = 0.3
        
        switch currentLight {
            
        case .red: currentLight = .yellow
            
//            currentLight = .yellow
//            greenLightState = lightIsOff
//            redLightState = lightIsOn
            
        case .yellow: currentLight = .green
            
//            currentLight = .green
//            redLightState = lightIsOff
//            yellowLightState = lightIsOn
            
        case .green: currentLight = .red
            
//            currentLight = .red
//            greenLightState = lightIsOn
//            yellowLightState = lightIsOff
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                ColorLight(color: .red, opacity: currentLight == .red ? 1 : 0.3)
                ColorLight(color: .yellow, opacity: currentLight == .yellow ? 1 : 0.3)
                ColorLight(color: .green, opacity: currentLight == .green ? 1 : 0.3)
                
//                ColorLight(color: .red, opacity: redLightState)
//                ColorLight(color: .yellow, opacity: yellowLightState)
//                ColorLight(color: .green, opacity: greenLightState)
                
                Spacer()
                
                ChangeColorButton(title: buttonTitle) {
                    self.buttonTitle = "NEXT"
                    self.nextColor()
                }
            }
            .padding()
        }
    }
}
