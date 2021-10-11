//
//  CounterView.swift
//  PomPotes
//
//  Created by Tiago Santos on 11/10/2021.
//

import SwiftUI

struct CounterView: View {
    
    @State var count: Int = 0
    
    var body: some View {
        VStack {
            Text("Total: \(count)")
            CustomButton(description: "+1", color: .green, didTapButton: {
                count += 1
            })
            CustomButton(description: "-1", color: .red, didTapButton: {
                count -= 1
            })
        }
    }
}

struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView()
    }
}
