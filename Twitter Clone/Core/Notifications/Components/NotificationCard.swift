//
//  NotificationCard.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 22.12.2023.
//

import SwiftUI

struct NotificationCard: View {
    
    let notification : NotificationModel
    
    var body: some View {
        HStack {
            // Star image
            Image(systemName: "star.fill")
                .foregroundColor(.purple)
                .imageScale(.large)
                .frame(width: 30, height: 30) // Set a fixed size for the star
                .padding(.leading)
            
            VStack(alignment: .leading) {
                // User post image
                AsyncImage(url: URL(string: "https://i.pravatar.cc/40")) { phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 40, height: 40)
                            .cornerRadius(99)
                    } else if phase.error != nil {
                        Color.red // Indicates an error.
                    } else {
                        ProgressView()
                    }
                }
                
                // Notification title
                Text(notification.title)
                    .fontWeight(.semibold)
                
                // Notification description
                Text(notification.description)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            // More options button
            Button {
                // Add your action here
            } label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(.secondary)
            }
            .frame(width: 30, height: 30) // Set a fixed size for the button
        }
    }
}

#Preview {
    NotificationCard(notification: notifications[0])
}
