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
            AsyncImage(url: URL(string: "https://i.pravatar.cc/32"))
                .cornerRadius(99)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
            //twitter logo
            TwitterLogo(frameWidth: 27, paddingTop: 0)
            Spacer()
            //icon
            Image(systemName: "wand.and.stars")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                .imageScale(.large)
        }
        .padding(.top, 10)
        .padding(.leading, 10)
        .padding(.trailing, 10)
    }
}
