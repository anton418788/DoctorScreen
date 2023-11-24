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
            ForEach (sectionData) { item in
                DoctorBlock(section: item)
            }
        }.padding(.top, 16.0)
    }
}
struct Section : Identifiable {
    var id = UUID()
    var doctor_photo : Image
    var doctor_name : String
    var doctor_spec : String
    var doctor_location : String
    var doctor_reviews : String
    var doctor_time : String
}
let sectionData = [
    Section(doctor_photo: Image("2st-doctor"), doctor_name: "Dr. Joseph Brostito", doctor_spec: "Dental Specialist", doctor_location: "1.2 KM", doctor_reviews: "4,8 (120 Reviews)", doctor_time: "11:00 - 12:00 AM"),
    Section(doctor_photo: Image("image 8"), doctor_name: "Dr. Imran Syahir", doctor_spec: "General Doctor", doctor_location: "1.2 KM", doctor_reviews: "4,8 (120 Reviews)", doctor_time: "11:00 - 12:00 AM"),
    Section(doctor_photo: Image("2st-doctor"), doctor_name: "Dr. Joseph Brostito", doctor_spec: "Dental Specialist", doctor_location: "1.2 KM", doctor_reviews: "4,8 (120 Reviews)", doctor_time: "11:00 - 12:00 AM"),
    Section(doctor_photo: Image("image 8"), doctor_name: "Dr. Imran Syahir", doctor_spec: "General Doctor", doctor_location: "1.2 KM", doctor_reviews: "4,8 (120 Reviews)", doctor_time: "11:00 - 12:00 AM")]

struct DoctorBlock : View {
    var section : Section
    var body : some View {
        VStack {
            HStack {
                section.doctor_photo
                    .resizable()
                    .scaledToFill()
                    .frame(width: 57, height: 57, alignment: .top)
                    .background(.white)
                    .clipShape(Circle())
                VStack (alignment : .leading, spacing: 8){
                    Text(section.doctor_name)
                        .font(.custom("Poppins-Bold", size: 16))
                        .foregroundColor(Color.black)
                    Text(section.doctor_spec)
                        .font(.custom("Poppins-Regular", size: 14))
                        .foregroundColor(Color.gray)
                }.padding(.leading, 12)
                Spacer()
                Image("location")
                Text(section.doctor_location)
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(Color.gray)

            }
            Divider()
                .frame(width: .infinity, height: 1)
                .overlay(Color("line-color"))
                .padding(.vertical, 8.0)
            HStack (alignment : .top){
                Label {
                    Text(section.doctor_reviews)
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color("reviews-color"))
                } icon: {
                    Image("clock-ye")
                }
                Spacer()
                Label {
                    Text(section.doctor_time)
                        .font(.custom("Poppins-Regular", size: 12))
                        .foregroundColor(Color("card-background"))
                } icon: {
                    Image("clock-blue")
                }
            }
        }.padding(.horizontal, 16.0).padding(.vertical, 20)
    }
}
