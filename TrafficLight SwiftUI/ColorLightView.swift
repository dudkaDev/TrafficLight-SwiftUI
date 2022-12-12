//
//  ColorLightView.swift
//  TrafficLight SwiftUI
//
//  Created by Андрей Абакумов on 09.12.2022.
//

import SwiftUI

struct ColorLightView: View {
    let color: Color
    let opacity: Double
    let shadowOpacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
            .shadow(color: color.opacity(shadowOpacity), radius: 10)
        
            
    }
}

struct ColorLightView_Previews: PreviewProvider {
    static var previews: some View {
        ColorLightView(color: .red, opacity: 1, shadowOpacity: 1)
    }
}
