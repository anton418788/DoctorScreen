//
//  MainScreen.swift
//  EffectiveLab2
//
//  Created by Admin on 19.11.2023.
//

import Foundation
import SwiftUI
struct MainScreen: View {
    var body: some 	View {
        ScrollView {
            VStack  {
                HelloBlock()
                CardBlock()
                SearchBlock()
                CategoryBlock()
                NearBlock()
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading).padding(.horizontal, 24.0)
        }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
