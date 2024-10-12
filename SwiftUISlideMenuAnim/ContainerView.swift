//
//  HomeView.swift
//  SwiftUISlideMenuAnim
//
//  Created by Manu Aravind on 12/10/24.
//
import SwiftUI

struct ContainerView : View {
    @State private var shouldMoveOffset = false
    @Binding var selectedNavigationItem: Int
    @Binding var showSideMenu: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Rectangle()
                .fill(Color.white)
                .gesture(DragGesture().onEnded({ _ in
                    self.showSideMenu.toggle()
                }))
            VStack(alignment: .center) {
                Spacer()
                    .frame(height: 50.0)
                
                displaySelectedView()
            }
        }
        .edgesIgnoringSafeArea(.all)
        .shadow(color: Color.white, radius: 14.0, x: 2.0, y: 0.0)
        .offset(x: showSideMenu ? UIScreen.main.bounds.size.width - AppConstants.MenuLeadingSpacing : 0.0, y: 0.0)
        .animation(.spring(), value: showSideMenu)
    }
    
    
    @ViewBuilder
    func displaySelectedView() -> some View {
        switch selectedNavigationItem {
        case 0:
            DashboardView(showSideMenu: $showSideMenu)
        case 1:
            FavoriteView(showSideMenu: $showSideMenu)
        case 2:
            ChatView(showSideMenu: $showSideMenu)
        default:
            ProfileView(showSideMenu: $showSideMenu)
        }
    }
}
