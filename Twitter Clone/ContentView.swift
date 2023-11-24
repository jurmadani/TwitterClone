//
//  ContentView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 20.11.2023.
//

import SwiftUI
import AuthenticationServices

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image("TwitterLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30)
                .padding(.top,15)
            Spacer()
            Text("See what's happening in the world right now")
                .font(.title)
                .fontWeight(.heavy)
                .padding(.trailing,70)
                .frame(width: 330)
            // buttons
            Spacer()
            //continue with google button
            Button {
                print("Google login")
            } label: {
                HStack{
                    Image("GoogleLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                        .padding(.leading, 20)
                    Text("Sign in with Google")
                        .padding(.vertical, 15)
                        .padding(.trailing,20)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                }
                .frame(width: 300,height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray3), lineWidth: 1) // Apply border with corner radius
                )
                .background(Color.white) // Set a background color to prevent content from being affected by the border
                
            }
            //continue with apple
            Button(action: {
                // Your action on tap
            }) {
                HStack {
                    Image("AppleLogo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24)
                        .padding(.leading, 20)
                    
                    Text("Sign in with Apple")
                        .padding(.vertical, 15)
                        .padding(.trailing,20)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                }
            }
            .frame(width: 300, height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.systemGray3), lineWidth: 1)
            )
            .background(Color.white)
            //or separator
            HStack{
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 65, height: 0.7 )
                Text("Or")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Rectangle()
                    .frame(width: (UIScreen.main.bounds.width / 2) - 65, height: 0.7 )
            }.foregroundColor(.gray)
            // create account button
            Button {
                print("Create account button")
            } label: {
                Text("Create account")
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: (UIScreen.main.bounds.width) - 100, height: 50)
                    .background(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                    .cornerRadius(10)
                
            }
            //text
            HStack{
                Text("By signing up, you agree to the ") +
                Text("Terms of Service ")
                    .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0))) +
                Text("and ") +
                Text("Privacy Policy, ")
                    .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0))) +
                Text("including ") +
                Text("Cookie Use.")
                    .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
            }.font(.footnote)
                .frame(width: (UIScreen.main.bounds.width) - 100, height: 50)
            //Already have an account?
            Spacer()
            HStack{
                Text("Have an account already?")
                Text("Log in")
                    .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
            }.font(.subheadline)
            
            
        }
    }
}
#Preview {
    ContentView()
}

