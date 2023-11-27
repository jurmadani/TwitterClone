//
//  FollowingFeedView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 25.11.2023.
//

import SwiftUI

struct FollowingFeedView: View {
    var body: some View {
       ScrollViewReaderFeed(mockData: ArraySlice(mockData), sliceArray: true)
    }
}

#Preview {
    FollowingFeedView()
}
