//
//  SearchBar.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 24.11.2023.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color(.systemGray))
            TextField("Search", text: $searchText)
                .frame(width: 235)
        }
        .padding(.top, 10)
        .padding(.bottom, 10)
        .padding(.leading,20)
        .background(Color(.systemGray6))
        .cornerRadius(99)
        .frame(height: 0)
    }
}
