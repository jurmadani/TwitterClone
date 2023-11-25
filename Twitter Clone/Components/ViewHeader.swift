//
//  ViewHeader.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct ViewHeader: View {
    //params for this component
    var view : String
    @State var searchText : String = ""
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
            //based on the view we are gonna render different hero element/s
            switch view{
            case "feed":
                //twitter logo
                TwitterLogo(frameWidth: 27, paddingTop: 0)
            case "search":
                SearchBar(searchText: $searchText)
            case "community":
                Text("Communities")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            case "notification":
                Text("Notification")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            case "messages":
                Text("Messages")
                    .fontWeight(.bold)
            default:
                //twitter logo
                TwitterLogo(frameWidth: 27, paddingTop: 0)
            }
            
            Spacer()
            //icon
            Image(systemName: "gearshape")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                .imageScale(.large)
          
        }
        .padding(.top, 10)
        .padding(.bottom, 10)
        .padding(.leading, 10)
        .padding(.trailing, 10)

        
       
    
            switch view {
            case "feed":
                FeedScreenTabs()
            case "search":
                Text("Trends for you")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(.leading, 10)
                    .font(.title3)
                    .fontWeight(.bold)
            case "community":
                Text("Discover new communities")
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .padding(.leading, 10)
                    .font(.title3)
                    .fontWeight(.bold)
            case "notification":
                NotificationsScreenTabs()
            default:
                Text("")
            }
    }
}

#Preview {
    ViewHeader(view: "feed")
}
