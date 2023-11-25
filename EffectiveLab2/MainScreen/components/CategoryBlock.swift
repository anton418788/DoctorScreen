//
//  CategoryBlock.swift
//  EffectiveLab2
//
//  Created by Admin on 23.11.2023.
//

import SwiftUI
import Foundation
struct CategoryBlock : View {
    var body : some View {
        HStack (spacing : category_spacing){
            Button(action: {}) {
                VStack {
                    Image(Images.covidCategory)
                        .padding(category_icon_padding)
                        .background(ColorList.category_image_background)
                        .clipShape(Circle())
                        .foregroundColor(ColorList.cetagory_image_color)
                    Text(covid_category)
                        .font(.custom(category_font, size: category_font_size))
                        .foregroundColor(ColorList.category_color)
                        
                }
            }
            Button(action: {}) {
                VStack {
                    Image(Images.doctorCategory)
                        .padding(category_icon_padding)
                        .background(ColorList.category_image_background)
                        .clipShape(Circle())
                        .foregroundColor(ColorList.cetagory_image_color)
                    Text(doctor_category)
                        .font(.custom(category_font, size: category_font_size))
                        .foregroundColor(ColorList.category_color)
                }
            }
            Button(action: {}) {
                VStack {
                    Image(Images.medicineCategory)
                        .padding(category_icon_padding)
                        .background(ColorList.category_image_background)
                        .clipShape(Circle())
                        .foregroundColor(ColorList.cetagory_image_color)
                    Text(medicine_category)
                        .font(.custom(category_font, size: category_font_size))
                        .foregroundColor(ColorList.category_color)
                }
            }
            Button(action: {}) {
                VStack {
                    Image(Images.hospitalCategory)
                        .padding(category_icon_padding)
                        .background(ColorList.category_image_background)
                        .clipShape(Circle())
                        .foregroundColor(ColorList.cetagory_image_color)
                    Text(hospital_category)
                        .font(.custom(category_font, size: category_font_size))
                        .foregroundColor(ColorList.category_color)
                }
            }
        }
        .padding(.top, category_small_pading)
    }
}
