//
//  ScrollViewReaderFeed.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 27.11.2023.
//

import SwiftUI

struct ScrollViewReaderFeed: View {
    
    let mockData : ArraySlice<PostModel>
    let sliceArray : Bool?
    
    @State var scrollViewOffset: CGFloat = 0
    @State var startOffset: CGFloat = 0
    
    var body: some View {
        ScrollViewReader { proxyReader in
            ScrollView{
                VStack{
                    // Divider()
                    ForEach(sliceArray == true ? mockData[1...3] : mockData, id: \.postId) { post in
                        PostViewModel(post: post)
                        Divider()
                    }
                }
                .id("scrollToTop")
                .overlay(
                    GeometryReader{ proxy -> Color in
                        
                        DispatchQueue.main.async {
                            if startOffset == 0 {
                                self.startOffset = proxy.frame(in: .global).minY
                            }
                            
                            let offset = proxy.frame(in: .global).minY
                            self.scrollViewOffset = offset - startOffset
                            
                        }
                        
                        return Color.clear
                        
                    }
                )
                
                
            }
            .padding(.top, 50)
            .overlay(
                self.scrollViewOffset <= -150 ? Button{
                    withAnimation(.spring()){
                        proxyReader.scrollTo("scrollToTop", anchor: .top)
                    }
                    
                } label : {
                    HStack{
                        Image(systemName: "arrow.up")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                    }
                    .frame( width: 42,height: 42)
                    .background(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                    .clipShape(Circle())
                    
                }
                    .frame(maxHeight: .infinity, alignment: .top)
                    .padding(.top, 60)
                : nil
            )
            .animation(.bouncy)
        }
        
        
    }
}


//#Preview {
//    ScrollViewReaderFeed()
//}
