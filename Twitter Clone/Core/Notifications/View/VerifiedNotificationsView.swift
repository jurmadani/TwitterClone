//
//  VerifiedNotificationsView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 25.11.2023.
//

import SwiftUI

struct VerifiedNotificationsView: View {
    var body: some View {
        VStack{
            Image("TwitterTick")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 500)
            
            
            VStack(alignment: .leading, spacing: 10){
                Text("There is nothing to see here yet.")
                    .font(.title)
                    .fontWeight(.black)
                    .multilineTextAlignment(.leading) // Align the text in the center
                
                
                Text("Likes, mentions, reposts, and much more - when they come from a verified account, you'll find them here. ")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                +
                Text("Learn more")
                    .font(.footnote)
                    .fontWeight(.bold)
                    .foregroundStyle(.secondary)
                    .underline()
                
                Text("Is your account not verified? Subscribe now to have a verified account and to be able to participate in quality conversations with other users.")
                    .font(.footnote)
                    .foregroundStyle(.secondary)
                
                Button {
                    print("Create account button")
                } label: {
                    Text("Subscribe")
                        .padding()
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .background(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                        .cornerRadius(40)
                        .padding(.top, 20)
                       
                    
                }
                
            Text("Offer on a limited period: 10,99$ / month")
                    .font(.callout)
                    .fontWeight(.bold)
                    .foregroundColor(.secondary)
                    .frame(maxWidth: .infinity, alignment: .center)
                    
                
                
            }
            .padding(.leading)
            .padding(.trailing)
            
            Spacer()
            
        }
        
    }
}



#Preview {
    VerifiedNotificationsView()
}
