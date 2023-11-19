//
//  MainScreen.swift
//  EffectiveLab2
//
//  Created by Admin on 19.11.2023.
//

import Foundation
import SwiftUI

struct MainScreen: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("Hello, ")
                        .font(.custom("Poppins", size: 16))
                        .foregroundColor(Color.gray)
                    Text("Hi James")
                        .font(.custom("Poppins", size: 20))
                        .foregroundColor(Color.black)
                }
                Spacer ()
                Image("avatar")
            }
            VStack(alignment: .leading) {
                HStack {
                    Image("image 8")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 57, height: 73, alignment: .top)
                        .background(.white)
                        .clipShape(Circle())
                        .padding(.trailing)
                    Text("Dr. Imran Syahir")
                        .font(.custom("Poppins", size: 16))
                        .foregroundColor(Color.white)
                       
                }
            }.frame(maxWidth : .infinity, alignment: .topLeading)
                .background(Color.blue)
                .cornerRadius(12)
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding(.horizontal, 24.0)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
