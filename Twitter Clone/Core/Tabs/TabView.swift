//
//  TabView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI


struct TabNavigationView: View {
    var body: some View {
        
        TabView {
            FeedScreen()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
           
            CommunityView()
                .tabItem {
                    Image(systemName: "person.2.fill")
                }
            
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell")
                }
            
            
            MessagesView()
                .tabItem {
                    Image(systemName: "envelope")
                }
            
        }
    }
}

#Preview {
    TabNavigationView()
}
