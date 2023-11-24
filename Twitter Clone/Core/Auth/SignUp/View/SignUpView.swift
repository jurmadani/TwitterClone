//
//  SignUpView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 23.11.2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack{
            
            
            VStack(spacing:10){
                //twitter logo
                TwitterLogo(frameWidth: 30, paddingTop: 15)
                Spacer()
                //hero text
                HeroText()
                // buttons
                //continue with google button
                googleSignup()
                //continue with apple
                appleSignup()
                //or separator
                orSeparator()
                //inputs
                LoginInputs(email: $email, password: $password)
                //log in button
                LoginButton()
                Spacer()
                //don't have an account text
                FooterText()
                
            }
        }
    }
}

#Preview {
    SignUpView()
}

struct HeroText: View {
    var body: some View {
        Text("Sign in to twitter")
            .font(.title)
            .fontWeight(.heavy)
            .padding(.bottom, 15)
            .padding(.trailing,70)
    }
}

struct LoginInputs: View {
    @Binding var email : String
    @Binding var password : String
    var body: some View {
        VStack{
            TextField("Phone, email, or username", text: $email)
                .padding()
                .frame(width: 300)
                .fontWeight(.semibold)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray3), lineWidth: 1) // Apply border with corner radius
                )
            SecureField("Enter your password", text: $password)
                .padding()
                .frame(width: 300)
                .fontWeight(.semibold)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.systemGray3), lineWidth: 1) // Apply border with corner radius
                )
        }
    }
}

struct LoginButton: View {
    var body: some View {
        Button {
            print("Log in")
        } label: {
            Text("Log in")
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .frame(width: (UIScreen.main.bounds.width) - 100, height: 50)
                .background(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                .cornerRadius(10)
                .padding(.top,5)
            
        }
    }
}

struct FooterText: View {
    var body: some View {
        HStack{
            Text("Don't have an account?")
            NavigationLink{
                SignInView()
            } label: {
                Text("Sign up")
            }
            
        }.font(.subheadline)
    }
}
