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
            Text(near_string)
                .font(.custom(near_font_name, size: near_font_size_name))
                .foregroundColor(ColorList.near_color)
                .frame(maxWidth: .infinity, alignment : .leading)
            ForEach (sectionData) { item in
                DoctorBlock(section: item)
            }
        }.padding(.top, near_medium_padding)
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
    Section(doctor_photo: Image(Images.secondDoctorPhoto), doctor_name: second_doctor, doctor_spec: second_doctor_spec, doctor_location: second_doctor_local, doctor_reviews: second_doctor_reviews, doctor_time: second_doctor_time),
    Section(doctor_photo: Image(Images.firstDoctorPhoto), doctor_name: first_doctor, doctor_spec: first_doctor_spec, doctor_location: first_doctor_local, doctor_reviews: first_doctor_reviews, doctor_time: first_doctor_time),
    Section(doctor_photo: Image(Images.secondDoctorPhoto), doctor_name: second_doctor, doctor_spec: second_doctor_spec, doctor_location: second_doctor_local, doctor_reviews: second_doctor_reviews, doctor_time: second_doctor_time),
    Section(doctor_photo: Image(Images.firstDoctorPhoto), doctor_name: first_doctor, doctor_spec: first_doctor_spec, doctor_location: first_doctor_local, doctor_reviews: first_doctor_reviews, doctor_time: first_doctor_time)]

struct DoctorBlock : View {
    var section : Section
    var body : some View {
        VStack {
            HStack {
                section.doctor_photo
                    .resizable()
                    .scaledToFill()
                    .frame(width: doctor_block_frame, height: doctor_block_frame, alignment: .top)
                    .background(ColorList.near_doctor_background)
                    .clipShape(Circle())
                VStack (alignment : .leading, spacing: near_spacing){
                    Text(section.doctor_name)
                        .font(.custom(near_doctor_font_name, size: near_doctor_font_size_name))
                        .foregroundColor(ColorList.near_doctor_name_color)
                    Text(section.doctor_spec)
                        .font(.custom(near_doctor_font_spec, size: near_doctor_font_size_spec))
                        .foregroundColor(ColorList.near_doctor_spec_color)
                }.padding(.leading, near_small_padding)
                Spacer()
                Image(Images.locationIcon).renderingMode(.template).foregroundColor(ColorList.near_doctor_location_icon_color)
                Text(section.doctor_location)
                    .font(.custom(near_doctor_font_location, size: near_doctor_font_size_location))
                    .foregroundColor(ColorList.near_doctor_location_color)

            }
            Divider()
                .frame(height : near_divider_frame)
                .overlay(ColorList.near_doctor_divider_color)
                .padding([.top, .bottom], near_extra_small_padding)
            HStack (alignment : .top){
                Label {
                    Text(section.doctor_reviews)
                        .font(.custom(near_doctor_font_review, size: near_doctor_font_size_review))
                        .foregroundColor(ColorList.near_doctor_review_color)
                } icon: {
                    Image(Images.timeIcon).renderingMode(.template).foregroundColor(ColorList.near_doctor_review_icon_color)
                }
                Spacer()
                Label {
                    Text(section.doctor_time)
                        .font(.custom(near_doctor_font_time, size: near_doctor_font_size_time))
                        .foregroundColor(ColorList.near_doctor_time_color)
                } icon: {
                    Image(Images.timeIcon).renderingMode(.template).foregroundColor(ColorList.near_doctor_time_icon_color)
                }
            }
        }.padding(.horizontal, near_medium_padding).padding(.vertical, near_big_padding).background().compositingGroup().shadow(color: ColorList.near_shadow_color, radius: near_shadow_frame, x: near_shadow_x, y: near_shadow_y)
    }
}
