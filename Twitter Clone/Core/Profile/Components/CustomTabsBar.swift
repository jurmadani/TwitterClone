//
//  CustomTabsBar.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 30.11.2023.
//

import SwiftUI

struct CustomTabsBar: View {
    @Binding var currentTab : String
    var animation : Namespace.ID
    
    var body: some View {
        VStack(spacing: 0){
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 0){
                    
                    TabButton(title: "Tweets", currentTab: $currentTab, animation: animation)
                    
                    TabButton(title: "Replies", currentTab: $currentTab, animation: animation)
                    
                    TabButton(title: "Highlights", currentTab: $currentTab, animation: animation)
                    
                    TabButton(title: "Media", currentTab: $currentTab, animation: animation)
                    
                }
                .padding(.top, 25)
            }
            
            Divider()
        }
    }
}
