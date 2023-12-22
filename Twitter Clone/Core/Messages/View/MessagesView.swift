//
//  MessagesView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct MessagesView: View {
    
    @Binding var showMenu : Bool
    
    var body: some View {
        VStack(alignment: .center) {
            //header
            ViewHeader(view: "messages", showMenu: $showMenu)
            Divider()
            //messages posts
            ScrollView{
                VStack(alignment: .leading, spacing: 10){
                    Text("Welcome to your inbox!")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                    
                    Text("Drop a line, share posts and more with private conversations between you and others on Twitter")
                        .font(.callout)
                        .foregroundStyle(.secondary)
                    
                    Button {
                     
                    } label: {
                        Text("Write a message")
                            .padding()
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .background(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                            .cornerRadius(40)
                        
                    }
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

//#Preview {
//    MessagesView()
//}
