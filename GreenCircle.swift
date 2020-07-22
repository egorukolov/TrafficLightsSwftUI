//
//  GreenCircle.swift
//  TrafficLightsSeiftUI
//
//  Created by Egor Ukolov on 22.07.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import SwiftUI

struct GreenCircle: View {
    var body: some View {
        Color(.green)
        .frame(width: 136, height: 136)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.black, lineWidth: 5))
        .shadow(radius: 10)
        .padding(.top, 364)
    }
}

struct GreenCircle_Previews: PreviewProvider {
    static var previews: some View {
        GreenCircle()
    }
}
