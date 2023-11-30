//
//  TabButton.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 30.11.2023.
//

import SwiftUI

struct TabButton: View {
    
    
    var title: String
    @Binding var currentTab: String
    var animation: Namespace.ID
    
    var body: some View{
        
        Button{
            withAnimation{
                currentTab = title
            }
        } label: {
            VStack(spacing: 12){
                
                Text(title)
                    .fontWeight(.semibold)
                    .foregroundColor(currentTab == title ? Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)) : .gray)
                    .padding(.horizontal)
                
                if currentTab == title {
                    Capsule()
                        .fill(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                        .frame(height: 1.2)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                } else {
                    Capsule()
                        .fill(Color.clear)
                        .frame(height: 1.2)
                }
                
            }
        }
        
    }
}

