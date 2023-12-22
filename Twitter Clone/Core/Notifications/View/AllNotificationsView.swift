//
//  AllNotifications.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 25.11.2023.
//

import SwiftUI

struct AllNotificationsView: View {
    var body: some View {
        ScrollView{
    
            ForEach(notifications, id: \.title) { notification in
                NotificationCard(notification: notification)
                Divider()
            }
        }
        .padding(.top, 20)
    }
}

#Preview {
    AllNotificationsView()
}
