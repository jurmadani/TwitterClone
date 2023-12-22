//
//  CommunityCard.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 22.12.2023.
//

import SwiftUI

struct CommunityCard: View {
    
    var image: String
    var title: String
    var numberOfMembers: String
    
    var body: some View {
        HStack{
            // community logo
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70)
                .padding(.trailing)
                .padding(.leading)
            
            VStack(alignment: .leading){
                //title
                Text(title)
                    .fontWeight(.bold)
                    .font(.headline)
                //members
                Text(numberOfMembers)
                    .foregroundStyle(.secondary)
                ZStack{
                    AsyncImage(url: URL(string: "https://i.pravatar.cc/30")){ phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width:32,height: 32)
                                .cornerRadius(99)
                            
                        } else if phase.error != nil {
                            Color.red // Indicates an error.
                        } else {
                            ProgressView()
                        }
                    }
                    .zIndex(5)
                  
                    
                    
                    AsyncImage(url: URL(string: "https://i.pravatar.cc/30")){ phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width:32,height: 32)
                                .cornerRadius(99)
                            
                        } else if phase.error != nil {
                            Color.red // Indicates an error.
                        } else {
                            ProgressView()
                        }
                    }
                    .zIndex(4)
                    .offset(x: 20, y: 0) // Adjust the x-offset to position it to the right of the first image
                    
                    AsyncImage(url: URL(string: "https://i.pravatar.cc/30")){ phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width:32,height: 32)
                                .cornerRadius(99)
                            
                        } else if phase.error != nil {
                            Color.red // Indicates an error.
                        } else {
                            ProgressView()
                        }
                    }
                    .zIndex(3)
                    .offset(x: 40, y: 0) // Adjust the x-offset to position it to the right of the first image
                    

                    AsyncImage(url: URL(string: "https://i.pravatar.cc/30")){ phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width:32,height: 32)
                                .cornerRadius(99)
                            
                        } else if phase.error != nil {
                            Color.red // Indicates an error.
                        } else {
                            ProgressView()
                        }
                    }
                    .zIndex(2)
                    .offset(x: 60, y: 0) // Adjust the x-offset to position it to the right of the first image
                    
                    AsyncImage(url: URL(string: "https://i.pravatar.cc/30")){ phase in
                        if let image = phase.image {
                            image
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width:32,height: 32)
                                .cornerRadius(99)
                            
                        } else if phase.error != nil {
                            Color.red // Indicates an error.
                        } else {
                            ProgressView()
                        }
                    }
                    .zIndex(1)
                    .offset(x: 80, y: 0) // Adjust the x-offset to position it to the right of the first image
                    
                }
            }
      
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(.top)
        
        Divider()
            .padding(.top)
    }
        
    
}

#Preview {
    CommunityCard(image: "TwitterLogo", title: "Livestreaming on Twitter", numberOfMembers: "8k members")
}
