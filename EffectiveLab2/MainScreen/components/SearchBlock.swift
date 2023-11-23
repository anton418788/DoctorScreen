//
//  SearchBlock.swift
//  EffectiveLab2
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI
import Foundation
struct SearchBlock : View {
    @State var username = ""
    var body : some View {
        HStack {
            Image("search")
                .padding([.top, .leading, .bottom], 16.0)
            TextField("Search doctor or health issue", text: $username)
                .padding(.leading, 12.0)
        }.frame(maxWidth : .infinity, alignment: .topLeading)
            .background(Color("search-background"))
            .cornerRadius(12)
        .background(Color(red: 134.0, green: 150.0, blue: 187.0, opacity: 1.0))
        .padding(5)
        .cornerRadius(12)
    }
}
