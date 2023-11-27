//
//  ContentView.swift
//  EffectiveLab2
//
//  Created by Admin on 19.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image (systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text ("Hello World!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
