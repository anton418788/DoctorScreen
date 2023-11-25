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
                Text("hello_first")
                    .font(.custom("Poppins-Regular", size: 16))
                    .fontWeight(.regular)
                    .foregroundColor(Color.gray)
                Text("Hi James")
                    .font(.custom("Poppins-Bold", size: 20))
                    .foregroundColor(Color.black)
                
            }
            Spacer ()
            Image("avatar")
        }
    }
}

