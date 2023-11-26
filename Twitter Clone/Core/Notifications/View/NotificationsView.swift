//
//  NotificationsView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct NotificationsView: View {
    
    @Binding var showMenu : Bool
    
    var body: some View {
        VStack(alignment: .center) {
            //header
            ViewHeader(view: "notification", showMenu: $showMenu)
            Divider()
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

//#Preview {
//    NotificationsView()
//}
