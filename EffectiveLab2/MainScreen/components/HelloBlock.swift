//
//  HelloBlock.swift
//  EffectiveLab2
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI
import Foundation
struct HelloBlock : View {
    var body : some View {
        HStack {
            VStack (alignment : .leading){
                Text(hello_first)
                    .font(.custom(hello_font_hello, size: hello_font_size_hello))
                    .fontWeight(.regular)
                    .foregroundColor(ColorList.hello_color)
                Text(hello_second)
                    .font(.custom(hello_font_name, size: hello_font_size_name))
                    .foregroundColor(ColorList.name_color)
                
            }
            Spacer ()
            Image(Images.avatarIcon)
        }
    }
}

