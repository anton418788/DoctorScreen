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
            return home_icon_string
        case .calendar:
            return calendar_icon_string
        case .message:
            return message_icon_string
        case .profile:
            return profile_icon_string
        }
    }
    
    var iconName: String{
        switch self {
        case .home:
            return Images.homeIcon
        case .calendar:
            return Images.calendarIcon
        case .message:
            return Images.messageIcon
        case .profile:
            return Images.profileIcon
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
                }.padding([.bottom, .top], tabbed_medium_pading)
            }
            .frame(maxWidth: .infinity)
            .background(ColorList.tabbed_background)
            .padding([.leading, .trailing], tabbed_big_pading)
        }
    }
}
extension TabbedView {
    func createCustomTabView(imageName: String, title: String, isActive: Bool) -> some View {
        let backgroundColor: Color = isActive ? ColorList.tabbed_background_active : .clear
        return HStack {
            Spacer()
            Image(imageName)
                .renderingMode(.template)
                .foregroundColor(isActive ? ColorList.tabbed_buttom_active : .gray)
            if isActive {
                Text(title)
                    .font(.custom(tabbed_font, size: tabbed_font_size))
                    .foregroundColor(isActive ? ColorList.tabbed_buttom_text_active : .gray)
            }
            Spacer()
        }
        .frame(width: isActive ? tabbed_frame_width_active : tabbed_frame_width_noactive)
        .frame(maxWidth: .infinity)
        .padding([.bottom, .top], tabbed_small_pading)
        .background(backgroundColor)
        .cornerRadius(tabbed_corner)
    }
}

struct TabbedView_Previews : PreviewProvider {
    static var previews: some View {
        TabbedView()
    }
}
