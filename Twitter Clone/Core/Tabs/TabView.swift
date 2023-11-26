//
//  TabView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI


struct TabNavigationView: View {
    
    @State var showMenu : Bool = false
    
    //offsets
    @State var offset : CGFloat = 0
    @State var lastStoredOffset: CGFloat = 0
        
    var body: some View {
        
        let sideBarWidth = getRect().width - 90;
        
        
        NavigationStack{
            HStack(spacing: -90){
                //Side menu
                SlideMenuView(showMenu: $showMenu)
                
                //tab view
                TabView {
                    FeedScreen(showMenu: $showMenu)
                        .tabItem {
                            Image(systemName: "house")
                        }
                    
                    SearchView(showMenu: $showMenu)
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                        }
                    
                    CommunityView(showMenu: $showMenu)
                        .tabItem {
                            Image(systemName: "person.2.fill")
                        }
                    
                    NotificationsView(showMenu: $showMenu)
                        .tabItem {
                            Image(systemName: "bell")
                        }
                    
                    MessagesView(showMenu: $showMenu)
                        .tabItem {
                            Image(systemName: "envelope")
                        }
                }
                .overlay(
                    Rectangle()
                        .fill(
                            Color.primary
                                .opacity(Double((offset / sideBarWidth) / 5))
                        )
                        .ignoresSafeArea(.container, edges: .vertical)
                        .onTapGesture{
                            withAnimation{
                                showMenu.toggle()
                            }
                        }
                )
                
            }
            .frame(width: getRect().width + sideBarWidth)
            .offset(x: -sideBarWidth / 2)
            .offset(x: offset > 0 ? offset : 0)
            
        }
        
        .animation(.bouncy, value: offset == 0)
        .onChange(of: showMenu) { newValue in
            if showMenu && offset == 0 {
                offset = sideBarWidth
            }
            
            if !showMenu && offset == sideBarWidth {
                offset = 0
                lastStoredOffset = 0
            }
        }

        
    }
}

#Preview {
    TabNavigationView()
}
