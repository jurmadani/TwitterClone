//
//  ProfileView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 27.11.2023.
//

import SwiftUI

struct ProfileView: View {
    
    @State var offset: CGFloat = 0
    
    //Dark mode
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack{
                //Header view
                GeometryReader{ proxy -> AnyView in
                    
                    //sticky header
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async {
                        self.offset = minY
                    }
                    
                    return AnyView(
                        
                        ZStack{
                            //Banner
                            Image("ProfileBanner")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: getRect().width, height: minY > 0 ? 150 + minY : 150, alignment: .center)
                                .cornerRadius(0)
                            
                            
                            if minY < 0 {BlurView()
                                .opacity(blurViewOpacityNegativeY())}
                            else {BlurView()
                                .opacity(blurViewOpacityPositiveY())}
                            
                            
                            HStack {
                                // Back button
                                Button{
                                    
                                } label : {
                                    Image(systemName: "arrow.left")
                                        .foregroundStyle(.white)
                                    //.imageScale(.large)
                                        .padding(8)
                                        .background(Color(.systemGray2).opacity(0.4))
                                        .clipShape(Circle())
                                }
                                
                                Spacer()
                                
                                //search button
                                Button{
                                    
                                } label : {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundStyle(.white)
                                    //.imageScale(.large)
                                        .padding(7)
                                        .background(Color(.systemGray2).opacity(0.4))
                                        .clipShape(Circle())
                                }
                                
                                // More button
                                Button{
                                    
                                } label : {
                                    Image(systemName: "ellipsis")
                                        .foregroundStyle(.white)
                                    // .imageScale(.large)
                                        .padding(13)
                                        .background(Color(.systemGray2).opacity(0.4))
                                        .clipShape(Circle())
                                }
                                
                                
                                
                                
                            }
                            .padding(.top, 15)
                            .padding(.leading)
                            .padding(.trailing)
                            .position(x: getRect().width / 2, y: 90)
                            .offset(y: -minY > 0 ? (-minY > 22 ? 22 : -minY + 1) : 0)
                            
                        }
                        //stretchy header
                            .frame(height: minY > 0 ? 150 + minY : nil)
                            .offset(y: minY > 0 ? -minY : -minY < 50 ? 0 : -minY - 50)
                        
                        
                    )
                    
                    
                    
                }
                .frame(height: 150)
                .zIndex(1)
                
                
                
                //Profile image...
                VStack (spacing: -5){
                    HStack{
                        
                        //image
                        Image("ProfileLogo")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 75, height: 75)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                            .padding(8)
                            .background(colorScheme == .dark ? Color.black : Color.white)
                            .clipShape(Circle())
                            .offset(y: offset < 0 ? getOffset() - 20 : -20)
                            .scaleEffect(getScale())
                        
                        Spacer()
                        
                        
                        //notifications button
                        Button{
                        } label : {
                            HStack{
                                Image(systemName: "bell.badge")
                                    .tint(.primary)
                                    .padding(8)
                            }
                            .background(
                                Circle()
                                    .stroke(Color(.systemGray2))
                            )
                        }
                        
                        //follow button
                        Button{
                        } label : {
                            HStack{
                                Image(systemName: "person.fill.checkmark")
                                    .tint(.primary)
                                    .padding(8)
                            }
                            .background(
                                Circle()
                                    .stroke(Color(.systemGray2))
                            )
                        }
                        
                        //subscribe button
                        Button{
                        } label : {
                            HStack{
                                Text("Subscribe")
                                    .fontWeight(.bold)
                                    .padding(10)
                                    .padding(.leading, 10)
                                    .padding(.trailing, 10)
                                    .foregroundStyle(.white)
                                
                            }
                            .background(Color(red: 201/255, green: 54/255, blue: 204/255))
                            .cornerRadius(99)
                        }
                        
                    }
                    .padding(.top, -18)
                    
                    //Profile data
                    VStack(alignment: .leading, spacing: 5){
                        
                        HStack {
                            //Full name
                            Text("Elon Musk")
                                .font(.title2)
                                .fontWeight(.bold)
                            //Verified badge
                            Image("verified")
                                .resizable()
                                .frame(width: 23, height: 23)
                            
                        }
                        //username
                        Text("@elonmusk")
                            .font(.callout)
                            .foregroundStyle(.secondary)
                        
                        Text("I'm Elon and I'm a part of Twitter Clone 🚀")
                        
                        //Joined date and hobby
                        HStack{
                            //hobby
                            Label(
                                title: { Text("Automotive") },
                                icon: { Image(systemName: "suitcase") }
                            )
                            
                            //joined date
                            Label(
                                title: { Text("Joined June 2009") },
                                icon: { Image(systemName: "calendar") }
                            )
                            
                            
                        }
                        .padding(.top, 6)
                        .foregroundStyle(.secondary)
                        .font(.callout)
                        
                        //User stats
                        HStack{
                            //followers
                            Button{
                            } label : {
                                
                                Text("432")
                                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                                    .fontWeight(.semibold)
                                
                                Text("Following")
                                    .foregroundStyle(Color(.systemGray2))
                                
                            }
                            //followers
                            Button{
                            } label : {
                                Text("1.2M")
                                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                                    .fontWeight(.semibold)
                                Text("Followers")
                                    .foregroundStyle(Color(.systemGray2))
                                
                            }
                        }
                        
                        
                    }
                    
                }
                .padding(.horizontal)
                .zIndex(-offset > 50 ? 0 : 1)
                
            }
        })
        .ignoresSafeArea(.all, edges: .top)
    }
    
    //Profile shrinking effect...
    func getOffset() -> CGFloat{
        
        let progress = (-offset / 50) * 20
        
        return progress <= 20 ? progress : 20
        
    }
    
    func getScale() -> CGFloat{
        
        let progress = -offset / 50
        
        let scale = 1.8 - (progress < 1.0 ? progress : 1)
        
        return scale < 1 ? scale : 1
    }
    
    func blurViewOpacityNegativeY() -> Double {
        
        let progress = -(offset + 50) / 120
        
        return Double(-offset > 50 ? progress : 0)
    }
    
    func blurViewOpacityPositiveY() -> Double {
        
        let progress = (offset + 30) / 120
        
        return Double(offset > 0 ? progress : 0)
    }
    
}

#Preview {
    ProfileView()
}

