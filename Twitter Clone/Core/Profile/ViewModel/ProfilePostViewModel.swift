//
//  UserPostModel.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 28.11.2023.
//

import SwiftUI

struct ProfilePostViewModel: View {
    
    let post : PostModel
    
    var body: some View {
        HStack(alignment: .top, spacing: 10){
            //user avatar
       
              Image("ProfileLogo")
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(width: 48,height: 48)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
           

            
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
                //Post content
                VStack{
                    //post description
                    HStack{
                        Text(post.content)
                            .foregroundStyle(.primary)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    if post.postImage != nil {
                        Image(post.postImage ?? "MockPostImage1")
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 311, height: 175)
                            .cornerRadius(12)
                    }
                }
                
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
        //.padding()
    }
}

#Preview {
    ProfilePostViewModel(post: PostModel(postId: "206", author: user4, content: "Learning a new language.", timestamp: Date().addingTimeInterval(-93420), likes: 7212, comments: [comment11, comment12], retweets: [], views: 250, postImage: "MockPostImage1"))
}
