//
//  CustomButton.swift
//  PomPotes
//
//  Created by Tiago Santos on 11/10/2021.
//

import SwiftUI

struct CustomButton: View {
    
    var description: String
    var color: Color
    var didTapButton: () -> Void
    
    var body: some View {
        Button(action: didTapButton) {
            ZStack {
                Rectangle()
                    .frame(width: 300, height: 50)
                    .foregroundColor(color)
                    .cornerRadius(20)
                Text(description)
                    .foregroundColor(.white)
                    .font(.headline)
            }
        }
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(description: "My Text", color: .green, didTapButton: {})
    }
}
