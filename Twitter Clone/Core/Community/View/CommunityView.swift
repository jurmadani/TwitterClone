//
//  CommunityView.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct CommunityView: View {
    var body: some View {
        VStack(alignment: .center) {
            //header
            ViewHeader(view: "community")
            Divider()
            //feed posts
            ScrollView{
                Text("Community view")
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
    }
}

#Preview {
    CommunityView()
}
