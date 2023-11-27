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
        ScrollViewReaderFeed(mockData: ArraySlice(mockData), sliceArray: false)
    }
}
#Preview {
    ForYouFeedView()
}
