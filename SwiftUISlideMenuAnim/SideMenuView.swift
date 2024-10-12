//
//  SideMenuView.swift
//  SwiftUISlideMenuAnim
//
//  Created by Manu Aravind on 12/10/24.
//

import SwiftUI


struct SideMenuView : View {
    
    @Binding var showSideMenu: Bool
    @Binding var selectedNavigationItem: Int
    
    var body: some View {
        VStack(alignment: .trailing) {
            ProfileImageView()
            ForEach(MenuRowType.allCases, id: \.self){ row in
                RowView(isSelected: selectedNavigationItem == row.rawValue,
                        imageName: row.iconName,
                        title: row.title) {
                    selectedNavigationItem = row.rawValue
                    showSideMenu = false
                }
            }
            Spacer()
        }
        .padding(20)
        .offset(x: -30)
    }
    
    
    struct ProfileImageView: View {
        var body: some View {
            VStack {
                HStack {
                    Spacer()
                    Image("profileimage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 120, height: 120)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white, lineWidth: 10))
                    Spacer()
                }
                Text("Manu Aravind")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                Text("Mobile Developer")
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundColor(.white.opacity(0.5))
            }
        }
    }
    
    func RowView(isSelected: Bool, imageName: String, title: String, hideDivider: Bool = false, action: @escaping (()->())) -> some View{
        Button{
            action()
        } label: {
            VStack(alignment: .leading){
                HStack(spacing: 20){
                    Rectangle()
                        .fill(isSelected ? .green : .white)
                        .frame(width: 5)
                    
                    ZStack{
                        Image(imageName)
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(isSelected ? .white : .white.opacity(0.5))
                            .frame(width: 26, height: 26)
                    }
                    .frame(width: 30, height: 30)
                    Text(title)
                        .font(.system(size: 16, weight: .regular))
                        .foregroundColor(isSelected ? .white : .white.opacity(0.5))
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right") // Right arrow icon
                        .foregroundColor(isSelected ? .white : .white.opacity(0.5))
                    
                    Spacer().frame(width: AppConstants.MenuLeadingSpacing/2)
                }
            }
        }
        .frame(height: 50)
        
    }
    
}

