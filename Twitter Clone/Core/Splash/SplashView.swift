//
//  ContentView.swift
//  Learn
//
//  Created by Mohammad Azam on 3/30/22.
//
import SwiftUI

enum AnimationState {
    case compress
    case expand
    case normal
}

struct SplashView: View {
    
    @State private var animationState: AnimationState = .normal
    @State private var done: Bool = false
    
    func calculate() -> Double {
        switch animationState {
            case .compress:
                return 0.18
            case .expand:
                return 10.0
            case .normal:
                return 0.2
        }
    }
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                SignUpView()
                
                VStack {
                    Image("TwitterLogo")
                        .renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.white)
                        .scaleEffect(calculate())
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                .opacity(done ? 0 : 1)
            
                
            }
        
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    withAnimation(.spring()) {
                        animationState = .compress
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                            withAnimation(.spring()) {
                                animationState = .expand
                                withAnimation(.interpolatingSpring(mass: 1.0, stiffness: 100.0, damping: 10.0, initialVelocity: 0)) {
                                    done = true
                                }
                            }
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    SplashView()
}
