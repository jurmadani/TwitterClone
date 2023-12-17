//
//  SlideMenuView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 25.11.2023.
//

import SwiftUI

struct SlideMenuView: View {
    
    @State private var appearanceTheme = false
    @Binding var showMenu : Bool
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0 ){
            
            //header container
            VStack(alignment: .leading, spacing: 10){
                
                
                NavigationLink{
                    ProfileView()
                        .toolbar(.hidden)
                    
                } label: {
                    //user profile picture
                    Image("ProfileLogo")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .frame(width:55,height: 55)
                        .cornerRadius(99)
                }
                
                
                
                //user name
                Text("Elon Musk")
                    .font(.title2.bold())
                
                //user username
                Text("@elonmusk")
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
                            Text("497")
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
                            Text("165M")
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
                    TabButton(title: "Profile", image: "person", destination: ProfileView())
                    
                    TabButton(title: "Bookmarks", image: "bookmark", destination: ProfileView())
                    
                    TabButton(title: "Messages", image: "envelope", destination: ProfileView())
                    
                    TabButton(title: "Discover", image: "number", destination: ProfileView())
                    
                    TabButton(title: "Lists", image: "list.bullet.rectangle.portrait", destination: ProfileView())
                    
                    TabButton(title: "Monetization", image: "dollarsign.circle", destination: ProfileView())
                    
                    //twitter ads
                    Divider()
                    
                    TabButton(title: "Twitter Ads", image: "square.and.arrow.up", destination: ProfileView())
                    
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
    func TabButton<Destination: View>(title: String, image: String, destination: Destination) -> some View {
        NavigationLink(destination: destination.toolbar(.hidden)) {
            HStack(spacing: 14) {
                Image(systemName: image)
                    .imageScale(.large)
                    .frame(width: 30)
                Text(title)
                    .fontWeight(.bold)
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
   
    }


}

extension View {
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
}

//#Preview {
//    SlideMenuView()
//}
