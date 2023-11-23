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
        .padding(.top, 12.0)
    }
}
