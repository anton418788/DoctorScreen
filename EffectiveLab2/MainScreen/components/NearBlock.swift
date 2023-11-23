//
//  NearBlock.swift
//  EffectiveLab2
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI
import Foundation
struct NearBlock : View {
    var body : some View {
        VStack (alignment : .leading){
            Text("Near doctor")
                .font(.custom("Poppins-SemiBold", size: 16))
                .foregroundColor(Color.black)
                .frame(maxWidth: .infinity, alignment : .leading)
            DoctorBlock()
        }.padding(.top, 16.0)
    }
}
struct DoctorBlock : View {
    var body : some View {
        VStack {
            HStack {
                Image("2st-doctor")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 57, height: 57, alignment: .top)
                    .background(.white)
                    .clipShape(Circle())
                VStack (alignment : .leading, spacing: 8){
                    Text("Dr. Joseph Brostito")
                        .font(.custom("Poppins-Bold", size: 16))
                        .foregroundColor(Color.black)
                    Text("Dental Specialist")
                        .font(.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color.gray)
                }.padding(.leading, 12    )
                Spacer()
                Image("location")
                Text("1.2 KM")
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color.gray)

            }
            Divider()
                .frame(width: .infinity, height: 1)
                .overlay(Color("line-color"))
                .padding(.vertical, 8.0)
            HStack (alignment : .top){
                Label {
                    Text("4,8 (120 Reviews)")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color("reviews-color"))
                } icon: {
                    Image("clock-ye")
                }
                Spacer()
                Label {
                    Text("11:00 - 12:00 AM")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color("card-background"))
                } icon: {
                    Image("clock-blue")
                }
            }
        }.padding(.horizontal, 16.0).padding(.vertical, 20)
        VStack {
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
                        .foregroundColor(Color.black)
                    Text("General Doctor")
                        .font(.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color.gray)
                }.padding(.leading, 12    )
                Spacer()
                Image("location")
                Text("1.2 KM")
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color.gray)

            }
            Divider()
                .frame(width: .infinity, height: 1)
                .overlay(Color("line-color"))
                .padding(.vertical, 8.0)
            HStack (alignment : .top){
                Label {
                    Text("4,8 (120 Reviews)")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color("reviews-color"))
                } icon: {
                    Image("clock-ye")
                }
                Spacer()
                Label {
                    Text("11:00 - 12:00 AM")
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color("card-background"))
                } icon: {
                    Image("clock-blue")
                }
            }
        }.padding(.horizontal, 16.0).padding(.vertical, 20)
    }
}
