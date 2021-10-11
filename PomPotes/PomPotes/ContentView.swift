//
//  ContentView.swift
//  PomPotes
//
//  Created by Tiago Santos on 01/10/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("swift")
                .resizable()
                .frame(width: 100, height: 100)
            Spacer()
            VStack {
                Text("SwiftUI")
                    .font(.largeTitle)
                    .bold()
                Text("Better apps. Less code.")
                    .bold()
            }
        }.frame(height: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
