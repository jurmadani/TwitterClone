//
//  FollowingFeedView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 25.11.2023.
//

import SwiftUI

struct FollowingFeedView: View {
    var body: some View {
        ScrollView{
           // Divider()
            ForEach(mockData[1...3], id: \.postId) { post in
                PostViewModel(post: post)
                Divider()
            }
        }
        .padding(.top, 50)
    }
}

#Preview {
    FollowingFeedView()
}
