//
//  MainScreen.swift
//  EffectiveLab2
//
//  Created by Admin on 19.11.2023.
//

import Foundation
import SwiftUI

struct MainScreen: View {
    @State var username = ""
    var body: some View {
        VStack (spacing: 25) {
            HStack {
                VStack (alignment : .leading){
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
            VStack(alignment: .leading ) {
                HStack {
                    Image("image 8")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 57, height: 73, alignment: .top)
                        .background(.white)
                        .clipShape(Circle())
                        .padding(.leading, 20.0)
                        .padding(.trailing, 10)
                    VStack (alignment : .leading){
                        Text("Dr. Imran Syahir")
                            .font(.custom("Poppins", size: 16))
                            .foregroundColor(Color.white)
                        Text("General Doctor")
                            .font(.custom("Poppins", size: 14))
                            .foregroundColor(Color(red : 203, green : 225, blue : 255, opacity : 1))
                    }
                }
                Divider()
                    .frame(width: .infinity, height: 2)
                    .overlay(Color.init(red: 255.0, green: 255.0, blue: 255.0, opacity: 0.15))
                    .padding(.top, 2.0)
                    .padding(.horizontal, 20)
                    .padding(.bottom, 16.0)
                HStack (alignment : .top){
                    Label {
                        Text("Sunday, 12 June")
                            .font(.custom("Poppins", size: 12))
                            .foregroundColor(Color.white)
                    } icon: {
                        Image("calendar-2")
                    }.padding(.leading, 20)
                    Spacer()
                    Label {
                        Text("11:00 - 12:00 AM")
                            .font(.custom("Poppins", size: 12))
                            .foregroundColor(Color.white)
                    } icon: {
                        Image("clock")
                    }
                    .padding([.bottom, .trailing], 16.0)
                }
            }.frame(maxWidth : .infinity, alignment: .topLeading)
                .background(Color.blue)
                .cornerRadius(12)
            HStack {
                Image("search")
                    .padding(.vertical, 16.0)
                TextField("Search doctor or health issue", text: $username)
            }
            .background(Color(red: 134.0, green: 150.0, blue: 187.0, opacity: 1.0))
            .padding(5)
            .cornerRadius(12)
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding(.horizontal, 24.0)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
