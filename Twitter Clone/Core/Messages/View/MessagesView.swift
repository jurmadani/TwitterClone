//
//  MessagesView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct MessagesView: View {
    
    @Binding var showMenu : Bool
    
    var body: some View {
        VStack(alignment: .center) {
            //header
            ViewHeader(view: "messages", showMenu: $showMenu)
            Divider()
            //messages posts
            ScrollView{
                Text("messages view")
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

//#Preview {
//    MessagesView()
//}
