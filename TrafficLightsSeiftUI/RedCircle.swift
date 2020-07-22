//
//  RedCircle.swift
//  TrafficLightsSeiftUI
//
//  Created by Egor Ukolov on 22.07.2020.
//  Copyright © 2020 Egor Ukolov. All rights reserved.
//

import SwiftUI

struct RedCircle: View {
    var body: some View {
        Color(.red)
            .frame(width: 136, height: 136)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.black, lineWidth: 5))
            .shadow(radius: 10)
            .padding(.bottom, 285)
    }
}

struct RedCircle_Previews: PreviewProvider {
    static var previews: some View {
        RedCircle()
    }
}
