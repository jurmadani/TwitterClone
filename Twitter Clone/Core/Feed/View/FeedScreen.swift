//
//  FeedScreen.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct FeedScreen: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack(alignment: .center) {
            //header
            ViewHeader(view: "feed", showMenu: $showMenu)

        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}


//#Preview {
//    FeedScreen()
//}

