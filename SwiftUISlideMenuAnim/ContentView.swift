//
//  ContentView.swift
//  SwiftUISlideMenuAnim
//
//  Created by Manu Aravind on 12/10/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedNavigationItem = 0
        @State var showSideMenu = false
        
        var body: some View {
            ZStack {
                SideMenuView(showSideMenu: self.$showSideMenu, selectedNavigationItem: self.$selectedNavigationItem)
                ContainerView(selectedNavigationItem: self.$selectedNavigationItem, showSideMenu: self.$showSideMenu)
            }.background(AppConstants.CoreColor)
        }
}

#Preview {
    ContentView()
}
