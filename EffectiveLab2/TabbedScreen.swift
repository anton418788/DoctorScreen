//
//  TabbedScreen.swift
//  EffectiveLab2
//
//  Created by Admin on 24.11.2023.
//

import Foundation
import SwiftUI

enum TabbedItems: Int, CaseIterable{
    case home
    case calendar
    case message
    case profile
    var title: String{
        switch self {
        case .home:
            return "Home"
        case .calendar:
            return "Calendar"
        case .message:
            return "Message"
        case .profile:
            return "Profile"
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return "Home"
        case .calendar:
            return "calendar-icon"
        case .message:
            return "message-icon"
        case .profile:
            return "profile-icon"
        }
    }
}



struct TabbedView : View {
    @State private var selectedTab = 0
    var body : some View {
        ZStack(alignment: .bottom) {
            TabView (selection : $selectedTab){
                MainScreen().tag(0)
                CalendarScreen().tag(1)
                MessageScreen().tag(2)
                ProfileScreen().tag(3)
            }.tabViewStyle(PageTabViewStyle())
                .edgesIgnoringSafeArea(.all)
            ZStack {
                HStack {
                    ForEach((TabbedItems.allCases), id: \.self) { item in
                        Button {
                            selectedTab = item.rawValue
                        } label: {
                            createCustomTabView(imageName: item.iconName, title: item.title, isActive: (selectedTab == item.rawValue))
                        }
                    }
                }.padding([.bottom, .top], 16)
            }
            .frame(maxWidth: .infinity)
            .background(.white)
            .padding([.leading, .trailing], 24)
        }
    }
}
extension TabbedView {
    func createCustomTabView(imageName: String, title: String, isActive: Bool) -> some View {
        let backgroundColor: Color = isActive ? Color("active-color") : .clear
        return HStack {
            Spacer()
            Image(imageName)
                .renderingMode(.template)
                .foregroundColor(isActive ? Color("buttom-color") : .gray)
            if isActive {
                Text(title)
                    .font(.custom("Poppins-Regular", size: 14))
                    .foregroundColor(isActive ? Color("buttom-color") : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? 94 : 64)
        .frame(maxWidth: .infinity)
        .padding([.bottom, .top], 12)
        .background(backgroundColor)
        .cornerRadius(12)
    }
}

struct TabbedView_Previews : PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
