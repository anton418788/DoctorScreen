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
            Image(Images.searchIcon)
                .padding([.top, .leading, .bottom], search_big_padding)
            TextField(search_string, text: $username)
                .padding(.leading, search_medium_padding)
        }.frame(maxWidth : .infinity, alignment: .topLeading)
            .background(ColorList.search_background)
            .cornerRadius(search_corner)
        .padding(.top, search_big_padding)
        .cornerRadius(search_corner)
        
    }
}
