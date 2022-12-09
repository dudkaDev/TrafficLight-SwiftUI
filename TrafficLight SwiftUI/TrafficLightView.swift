//
//  TrafficLightView.swift
//  TrafficLight SwiftUI
//
//  Created by Андрей Абакумов on 09.12.2022.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct TrafficLightView: View {
    
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.red
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var redShadowState = 0.0
    @State private var yellowShadowState = 0.0
    @State private var greenShadowState = 0.0
    
    var body: some View {
        ZStack {
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ColorLightView(color: .red, opacity: redLightState, shadowOpacity: redShadowState)
                ColorLightView(color: .yellow, opacity: yellowLightState, shadowOpacity: yellowShadowState)
                ColorLightView(color: .green, opacity: greenLightState, shadowOpacity: greenShadowState)
                Spacer()
                ButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    changeColor()
                }
            }
            .padding(EdgeInsets(top: 80, leading: 16, bottom: 80, trailing: 16))
        }
    }
    
    private func changeColor() {
        
        let shadowOff = 0.0
        let off = 0.3
        let on = 1.0
        
        switch currentLight {
        case .red:
            currentLight = .yellow
            greenLightState = off
            greenShadowState = shadowOff
            redLightState = on
            redShadowState = on
        case .yellow:
            currentLight = .green
            redLightState = off
            redShadowState = shadowOff
            yellowLightState = on
            yellowShadowState = on
        case .green:
            currentLight = .red
            yellowLightState = off
            yellowShadowState = shadowOff
            greenLightState = on
            greenShadowState = on
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
