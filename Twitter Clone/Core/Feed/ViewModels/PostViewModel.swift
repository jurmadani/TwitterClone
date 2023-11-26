//
//  PostViewModel.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 26.11.2023.
//

import SwiftUI

struct PostViewModel: View {
    
    let post : PostModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 10){
            //user avatar
            AsyncImage(url: URL(string: "https://i.pravatar.cc/48")) { phase in
                if let image = phase.image {
                    image
                        .cornerRadius(99)
                    
                } else if phase.error != nil {
                    Color.red // Indicates an error.
                } else {
                    ProgressView()
                }
            }
            
            //Post information
            VStack(spacing: 5){
                
                //post author infomration
                HStack{
                    //post author name
                    Text(post.author.fullName)
                        .fontWeight(.bold)
                    HStack(spacing:2){
                        //post author username
                        Text("@" + post.author.username)
                        
                        //Bullet
                        Text("•")
                        
                        //Timestamp
                        Text(post.relativeTimestamp())
                        
                    }
                    .foregroundStyle(.secondary)
                    .font(.footnote)
                    
                    Spacer()
                    
                    Button{
                        
                    } label: {
                        Image(systemName: "ellipsis")
                            .tint(.secondary)
                    }
                }
                //post description
                HStack{
                    Text(post.content)
                        .foregroundStyle(.primary)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                //post actions
                HStack(spacing:20){
                    //Comments button
                    Button{
                        
                    } label : {
                        Label(String(post.comments.count), systemImage: "bubble")
                    }
                    //Retweets button
                    Button{
                        
                    } label : {
                        Label(String(post.retweets.count), systemImage: "arrow.2.squarepath")
                    }
                    //Likes
                    Button{
                        
                    } label : {
                        Label(String(post.likes), systemImage: "heart")
                    }
                    //Views
                    Button{
                        
                    } label : {
                        Label(String(post.views), systemImage: "chart.bar.fill")
                    }
                }
                .foregroundStyle(.secondary)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .font(.callout)
                
                
                
                
            }
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)// Displays the loaded image.
        .padding()
    }
}

#Preview {
    PostViewModel(post: mockData[1])
}
