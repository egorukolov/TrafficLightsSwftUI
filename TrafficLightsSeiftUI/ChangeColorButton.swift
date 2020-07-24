//
//  ChangeColorButton.swift
//  TrafficLightsSeiftUI
//
//  Created by Egor Ukolov on 24.07.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import SwiftUI

struct ChangeColorButton: View {
    var title: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
        }
        .padding()
        .frame(width: 200, height: 60)
        .background(Color(.blue))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .stroke(Color.white, lineWidth: 4)
        )
    }
}

struct ChangeColorButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeColorButton(title: "START", action: {})
    }
}
