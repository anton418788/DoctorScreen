//
//  CardBlock.swift
//  EffectiveLab2
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI
import Foundation
struct CardBlock : View {
    var body : some View {
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
                }.padding(.leading, 12    )
                Spacer()
                Button(action: {}) {
                    Image("arrow-right")
                }
            }
            Divider()
                .frame(height : 1)
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
    }
}
