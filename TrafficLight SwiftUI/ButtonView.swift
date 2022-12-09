//
//  ButtonView.swift
//  TrafficLight SwiftUI
//
//  Created by Андрей Абакумов on 09.12.2022.
//

import SwiftUI

struct ButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Capsule()
                    .frame(width: 120, height: 60)
                Text(title)
                    .font(.title)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START" , action: {})
    }
}
