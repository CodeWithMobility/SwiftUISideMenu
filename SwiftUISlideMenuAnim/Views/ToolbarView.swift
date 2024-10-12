//
//  ToolbarView.swift
//  SwiftUISlideMenuAnim
//
//  Created by Manu Aravind on 12/10/24.
//

import SwiftUI

struct ToolbarView: View {
    var title: String
    var iconAction: () -> Void
    @Binding var showSideMenu: Bool
    var body: some View {
        HStack {
            Button(action: iconAction) {
                Image(systemName: showSideMenu ? "multiply" : "line.horizontal.3")
                    .imageScale(.large)
                    .foregroundColor(.white)
                    .rotationEffect(.degrees(showSideMenu ? 0 : 180))
                    .animation(.spring(), value: showSideMenu)
            } .padding(.leading, 20.0)
           
            Spacer()
        }
        
        .overlay(
            Text(title)
                .font(.title3)
                .lineLimit(1).foregroundColor(.white)
        )
    }
}


struct ChatView: View {
    
    @Binding var showSideMenu: Bool
    
    var body: some View {
        VStack{
            ToolbarView( title: "Chat", iconAction: {
                showSideMenu.toggle()
            }, showSideMenu: $showSideMenu).frame(height: 60).background(AppConstants.CoreColor)
            
            Spacer()
            Text("Chat View")
            Spacer()
        }

    }
}

struct DashboardView: View {
    
    @Binding var showSideMenu: Bool
    
    var body: some View {
        VStack(spacing: 0){
            ToolbarView( title: "Home", iconAction: {
                showSideMenu.toggle()
            }, showSideMenu: $showSideMenu).frame(height: 60).background(AppConstants.CoreColor)
            Spacer()
            Text("Home View")
            Spacer()
        }
    }
}


struct ProfileView: View {
    
    @Binding var showSideMenu: Bool
    
    var body: some View {
        VStack{
            ToolbarView( title: "Profile", iconAction: {
                showSideMenu.toggle()
            }, showSideMenu: $showSideMenu).frame(height: 60).background(AppConstants.CoreColor)
            Spacer()
            Text("Profile View")
            Spacer()
        }
    }
}


struct FavoriteView: View {
    
    @Binding var showSideMenu: Bool
    
    var body: some View {
        VStack{
            ToolbarView( title: "Favorite", iconAction: {
                showSideMenu.toggle()
            }, showSideMenu: $showSideMenu).frame(height: 60).background(AppConstants.CoreColor)
            
            Spacer()
            Text("Favorite View")
            Spacer()
        }
    }
}
