//
//  NotificationsView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct NotificationsView: View {
    var body: some View {
        VStack(alignment: .center) {
            //header
            ViewHeader(view: "notification")
            Divider()
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    NotificationsView()
}
