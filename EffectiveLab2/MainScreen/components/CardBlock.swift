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
                Image(Images.firstDoctorPhoto)
                    .resizable()
                    .scaledToFill()
                    .frame(width: card_image_frame, height: card_image_frame, alignment: .top)
                    .background(ColorList.doctor_icon_color)
                    .clipShape(Circle())
                VStack (alignment : .leading, spacing: card_text_spacing){
                    Text(first_doctor)
                        .font(.custom(card_doctor_font_name, size: card_doctor_font_size_name))
                        .foregroundColor(ColorList.doctor_name_color)
                    Text(first_doctor_spec)
                        .font(.custom(card_doctor_font_spec, size: card_doctor_font_size_spec))
                        .foregroundColor(ColorList.doctor_spec_color)
                }.padding(.leading, card_medium_padding)
                Spacer()
                Button(action: {}) {
                    Image(Images.cardButtom).renderingMode(.template).foregroundColor(ColorList.card_buttom_icon_color)
                }
            }
            Divider()
                .frame(height : card_divider_frame)
                .overlay(ColorList.card_divider_color)
                .padding(.vertical, card_small_padding)
            HStack (alignment : .top){
                Label {
                    Text(first_doctor_date)
                        .font(.custom(card_doctor_font_time, size: card_doctor_font_size_time))
                        .foregroundColor(ColorList.card_date_color)
                } icon: {
                    Image(Images.dateIcon).renderingMode(.template).foregroundColor(ColorList.card_date_icon_color)
                }
                Spacer()
                Label {
                    Text(first_doctor_time)
                        .font(.custom(card_doctor_font_time, size: card_doctor_font_size_time))
                        .foregroundColor(ColorList.card_time_color)
                } icon: {
                    Image(Images.timeIcon).renderingMode(.template).foregroundColor(ColorList.card_time_icon_color)
                }
            }
            
        }
        .padding(.all, card_big_padding)
        .frame(maxWidth : .infinity, alignment: .topLeading)
        .background(ColorList.card_background)
            .cornerRadius(card_corner)
    }
}
struct CardBlock_Previews: PreviewProvider {
    static var previews: some View {
        CardBlock()
    }
}
