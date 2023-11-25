//
//  FeedScreenTabs.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 25.11.2023.
//

import SwiftUI

struct FeedScreenTabs: View {
    @State var currentTab: Int = 0
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            TabBarView(currentTab: self.$currentTab)
            
            TabView(selection: self.$currentTab) {
                ForYouFeedView().tag(0)
                FollowingFeedView().tag(1)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .edgesIgnoringSafeArea(.all)
    }
}
struct TabBarView: View {
    @Binding var currentTab: Int
    @Namespace var namespace
    
    var tabBarOptions: [String] = ["For you", "Following"]
    var body: some View {
        HStack(spacing: 10) {
            ForEach(Array(zip(self.tabBarOptions.indices,
                              self.tabBarOptions)),
                    id: \.0,
                    content: {
                index, name in
                TabBarItem(currentTab: self.$currentTab,
                           namespace: namespace.self,
                           tabBarItemName: name,
                           tab: index)
                
            })
        }
        .padding(.horizontal)
        .frame(height: 30)
    }
}

struct TabBarItem: View {
    @Binding var currentTab: Int
    let namespace: Namespace.ID
    
    var tabBarItemName: String
    var tab: Int
    
    var body: some View {
        Button {
            self.currentTab = tab
        } label: {
            VStack {
                Spacer()
                Text(tabBarItemName)
            
                if currentTab == tab {
                    Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0))
                        .frame(height: 2)
                        .matchedGeometryEffect(id: "underline",
                                               in: namespace,
                                               properties: .frame)
                } else {
                    Color.clear.frame(height: 2)
                }
            }
            .animation(.spring(), value: self.currentTab)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    FeedScreenTabs()
}
