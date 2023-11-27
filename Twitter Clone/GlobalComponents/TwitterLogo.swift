//
//  TwitterLogo.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct TwitterLogo: View {
    var frameWidth : CGFloat
    var paddingTop : CGFloat
    var body: some View {
        
        Image("TwitterLogo")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: frameWidth)
            .padding(.top, paddingTop)
          
      
    }
}

#Preview {
    TwitterLogo(frameWidth: 30, paddingTop: 15)
}
