//
//  FeedScreen.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct FeedScreen: View {
    var body: some View {
        VStack(alignment: .center) {
            //header
            Header()
            Divider()
            //feed posts
            ScrollView{
                Text("Feed postsss")
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}


#Preview {
    FeedScreen()
}

struct Header: View {
    var body: some View {
        ZStack{
            //avatar image
            AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png")) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .frame(width:32,height: 32)
                        .cornerRadius(99)
                      
                } else if phase.error != nil {
                    Color.red // Indicates an error.
                } else {
                    ProgressView()
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)// Displays the loaded image.
               
            Spacer()
            //twitter logo
            TwitterLogo(frameWidth: 27, paddingTop: 0)
            Spacer()
            //icon
            Image(systemName: "gearshape")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                .imageScale(.large)
        }
        .padding(.top, 10)
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}
