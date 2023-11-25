//
//  SlideMenuView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 25.11.2023.
//

import SwiftUI

struct SlideMenuView: View {
    
    @State private var appearanceTheme = false
    
    var body: some View {
       
        VStack(alignment: .leading, spacing: 0 ){
            
            //header container
            VStack(alignment: .leading, spacing: 10){
                
                //user profile picture
                AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/8/89/Portrait_Placeholder.png")) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .frame(width:55,height: 55)
                            .cornerRadius(99)
                        
                    } else if phase.error != nil {
                        Color.red // Indicates an error.
                    } else {
                        ProgressView()
                    }
                }
                
                //user name
                Text("Jurmao")
                    .font(.title2.bold())
                
                //user username
                Text("@jurma08")
                    .font(.callout)
                    .foregroundStyle(Color.gray)
                
                //user statistics (following and followers
                HStack{
                    //following
                    Button{
                        
                    } label : {
                        Label{
                            Text("Following")
                                .foregroundStyle(Color.gray)
                        } icon: {
                            Text("432")
                                .fontWeight(.semibold)
                        }
                        
                    }
                    
                    //followers
                    Button{
                        
                    } label : {
                        Label{
                            Text("Followers")
                                .foregroundStyle(Color.gray)
                        } icon: {
                            Text("1.2M")
                                .fontWeight(.semibold)
                            
                            
                        }
                        
                    }
                    
                }
                .foregroundColor(.primary)
                .font(.subheadline)
                
            }
            .padding(.horizontal)
            .padding(.leading)
            
            //menu options
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading, spacing: 25){
                    //Tab buttons
                    TabButton(title: "Profile", image: "person")
                    
                    TabButton(title: "Bookmarks", image: "bookmark")
                    
                    TabButton(title: "Messages", image: "envelope")
                    
                    TabButton(title: "Discover", image: "number")
                    
                    TabButton(title: "Lists", image: "list.bullet.rectangle.portrait")
                    
                    TabButton(title: "Profile", image: "person")
                    
                    //twitter ads
                    Divider()
                    
                    TabButton(title: "Twitter Ads", image: "square.and.arrow.up")
                    
                }
                .padding()
                .padding(.leading)
                .padding(.top, 30)
                
    
                
            }
            VStack{
                Button{
                    appearanceTheme.toggle()
                } label: {
                    Image(systemName: appearanceTheme ? "moon" : "sun.min")
                        .imageScale(.large)
                        .foregroundColor(.primary)
                }
            }
            .padding()
            .padding(.leading)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(width: getRect().width - 90)
        .frame(maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(
            Color.primary
                .opacity(0.04)
                .ignoresSafeArea(.container, edges: .vertical)
        )
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
    }
    
    @ViewBuilder
    func TabButton(title: String, image: String) -> some View{
        Button{
            
        } label : {
            HStack(spacing: 14){
                
                Image(systemName: image)
                    .imageScale(.large)
                    .frame(width: 30)
                Text(title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .foregroundColor(.primary)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        }
    }
}

extension View {
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
}

#Preview {
    SlideMenuView()
}
