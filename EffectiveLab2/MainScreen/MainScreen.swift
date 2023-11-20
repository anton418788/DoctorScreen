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
            VStack(alignment: .leading ) {
                HStack {
                    Image("image 8")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 57, height: 57, alignment: .top)
                        .background(.white)
                        .clipShape(Circle())
                    VStack (alignment : .leading, spacing: 8){
                        Text("Dr. Imran Syahir")
                            .font(.custom("Poppins-Bold", size: 16))
                            .foregroundColor(Color.white)
                        Text("General Doctor")
                            .font(.custom("Poppins-Regular", size: 14))
                            .foregroundColor(Color("doctor-color"))
                    }.padding(.leading, 12	)
                    Spacer()
                    Button(action: {}) {
                        Image("arrow-right")
                    }
                }
                Divider()
                    .frame(width: .infinity, height: 1)
                    .overlay(Color("line-color"))
                    .padding(.vertical, 8.0)
                HStack (alignment : .top){
                    Label {
                        Text("Sunday, 12 June")
                            .font(.custom("Poppins-Regular", size: 12))
                            .foregroundColor(Color.white)
                    } icon: {
                        Image("calendar-2")
                    }
                    Spacer()
                    Label {
                        Text("11:00 - 12:00 AM")
                            .font(.custom("Poppins-Regular", size: 12))
                            .foregroundColor(Color.white)
                    } icon: {
                        Image("clock")
                    }
                }
            }
            .padding(.all, 20.0)
            .frame(maxWidth : .infinity, alignment: .topLeading)
                .background(Color("card-background"))
                .cornerRadius(12)
            HStack {
                Image("search")
                    .padding(.vertical, 16.0)
                TextField("Search doctor or health issue", text: $username)
            }
            .background(Color(red: 134.0, green: 150.0, blue: 187.0, opacity: 1.0))
            .padding(5)
            .cornerRadius(12)
            HStack (spacing : 13){
                Button(action: {}) {
                    VStack {
                        Image("covid-icon")
                            .padding(24)
                            .background(Color("category-color-2"))
                            .clipShape(Circle())
                        Text("Covid 19")
                            .font(.custom("Poppins-Regular", size: 15))
                            .foregroundColor(Color("category-color"))
                            
                    }
                }
                Button(action: {}) {
                    VStack {
                        Image("doctor-icon")
                            .padding(24)
                            .background(Color("category-color-2"))
                            .clipShape(Circle())
                        Text("Doctor")
                            .font(.custom("Poppins-Regular", size: 15))
                            .foregroundColor(Color("category-color"))
                    }
                }
                Button(action: {}) {
                    VStack {
                        Image("medicine-icon")
                            .padding(24)
                            .background(Color("category-color-2"))
                            .clipShape(Circle())
                        Text("Medicine")
                            .font(.custom("Poppins-Regular", size: 15))
                            .foregroundColor(Color("category-color"))
                    }
                }
                Button(action: {}) {
                    VStack {
                        Image("hospital-icon")
                            .padding(24)
                            .background(Color("category-color-2"))
                            .clipShape(Circle())
                        Text("Hospital")
                            .font(.custom("Poppins-Regular", size: 15))
                            .foregroundColor(Color("category-color"))
                    }
                }
                
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding(.horizontal, 24.0)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
