//
//  SignInView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 22.11.2023.
//

import SwiftUI

struct SignUpView: View {
    
    //Dark mode
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack{
            VStack {
                //twitter logo
                TwitterLogo(frameWidth: 30, paddingTop: 15)
                Spacer()
                //hero text
                Text("See what's happening in the world right now")
                    .font(.title)
                    .fontWeight(.heavy)
                    .padding(.trailing,70)
                    .frame(width: 330)
                // buttons
                Spacer()
                //continue with google button
                googleSignup(colorScheme: colorScheme)
                //continue with apple
                appleSignup(colorScheme: colorScheme)
                //or separator
                orSeparator()
                // create account button
                createAccountButton()
                //text
                signupPolicyText()
                //Already have an account?
                Spacer()
                alreadyHaveAnAccout()
                
            }
        }
    }
}

#Preview {
    SignUpView()
}

struct alreadyHaveAnAccout: View {
    var body: some View {
        HStack{
            Text("Have an account already?")
            NavigationLink{
                SignInView()
                    
            } label: {
                Text("Log in")
                    .foregroundColor(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
            }
          
            
        }.font(.subheadline)
    }
}

struct signupPolicyText: View {
    var body: some View {
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
    }
}

struct createAccountButton: View {
    var body: some View {
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
    }
}

struct orSeparator: View {
    var body: some View {
        HStack{
            Rectangle()
                .frame(width: (UIScreen.main.bounds.width / 2) - 65, height: 0.7 )
            Text("Or")
                .font(.footnote)
                .fontWeight(.semibold)
            Rectangle()
                .frame(width: (UIScreen.main.bounds.width / 2) - 65, height: 0.7 )
        }.foregroundColor(.gray)
    }
}

struct appleSignup: View {
    
    let colorScheme : ColorScheme
    
    var body: some View {
        Button(action: {
            // Your action on tap
        }) {
            HStack {
                Image("AppleLogo")
                    .renderingMode(.template)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24)
                    .padding(.leading, 20)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    
                
                Text("Sign up with Apple")
                    .padding(.vertical, 15)
                    .padding(.trailing,20)
                    .fontWeight(.semibold)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }
        }
        .frame(width: 300, height: 50)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray3), lineWidth: 1)
        )
        .background(colorScheme == .dark ? Color.black : Color.white) // Set a background color to prevent content from being affected by the border
    }
}

struct googleSignup: View {
    
    let colorScheme: ColorScheme
    
    var body: some View {
        Button {
            print("Google login")
        } label: {
            HStack{
                Image("GoogleLogo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24)
                    .padding(.leading, 20)
                Text("Sign up with Google")
                    .padding(.vertical, 15)
                    .padding(.trailing,20)
                    .fontWeight(.semibold)
                    .foregroundColor(colorScheme == .dark ? .white : .black)
            }
            .frame(width: 300,height: 50)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(.systemGray3), lineWidth: 1) // Apply border with corner radius
            )
            .background(colorScheme == .dark ? Color.black : Color.white) // Set a background color to prevent content from being affected by the border
            
        }
    }
}
