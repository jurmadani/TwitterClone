//
//  ForYouFeedView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 25.11.2023.
//

import SwiftUI

struct ForYouFeedView: View {
    var body: some View {
        //loop through mock data and display posts
        ScrollView{
           // Divider()
            ForEach(mockData, id: \.postId) { post in
                PostViewModel(post: post)
                Divider()
            }
        }
        .padding(.top, 50)
    }
}

#Preview {
    ForYouFeedView()
}
