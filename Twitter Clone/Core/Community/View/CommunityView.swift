//
//  CommunityView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct CommunityView: View {
    
    @Binding var showMenu : Bool
    
    var body: some View {
        VStack(alignment: .center) {
            //header
            ViewHeader(view: "community", showMenu: $showMenu)
            Divider()
            //communities
            ScrollView{
                CommunityCard(image: "TwitterLogo", title: "Livestreaming on Twitter", numberOfMembers: "12.4M members")
                CommunityCard(image: "AiCommunityImage", title: "Join the new AI Community", numberOfMembers: "342.4M members")
                CommunityCard(image: "GamingCommunityImage", title: "Gaming Communities", numberOfMembers: "153k members")
                
                //discover more
                HStack{
                    Button{
                        
                    } label: {
                        Text("Show me more")
                    }
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundColor(.secondary)
                }
                .padding()
            }
            
            
            
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

//#Preview {
//    CommunityView()
//}
