//
//  SearchView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        VStack(alignment: .center) {
            //header
            ViewHeader(view: "search")
            Divider()
            //feed posts
            ScrollView{
                Text("Search view")
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    SearchView()
}