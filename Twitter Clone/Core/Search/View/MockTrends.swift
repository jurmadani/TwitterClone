//
//  MockTrends\.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 17.12.2023.
//

import SwiftUI

struct MockTrends: View {
    var body: some View {
        ForEach (trendsMockData, id: \.id) { trend in
            VStack(alignment: .leading, spacing: 4){
                //category + trending or not + more button
                HStack{
                    Text(trend.category)
                    
                    if trend.trending{
                        Text("• Trending")
                            
                    }
                    Spacer()
                    Button{
                    } label: {
                        Image(systemName: "ellipsis")

                    }
                    .padding(.trailing)
                       
                }
                .foregroundStyle(.gray)
                
                //Title
                Text(trend.title)
                    .fontWeight(.semibold)
                
                //Tweets number
                Text(trend.tweets + " Tweets")
                    .foregroundStyle(.gray)
                    .font(.callout)
                
               
            }
            .padding(.leading)
            .padding(.bottom, 25)
            
        }
        
        //Show more
        HStack{
            Button{
                
            } label: {
                Text("Show more")
            }
            Spacer()
            Image(systemName:"chevron.right")
                .foregroundStyle(.gray)
                .imageScale(.small)
        }
        .padding(.leading)
        .padding(.trailing)
        
        Divider()
        
        //Videos for you
        VStack(alignment: .leading){
            Text("Videos for you")
                .fontWeight(.semibold)
            Text("Look at these popular videos that are trending right now")
                .font(.footnote)
                .foregroundStyle(.gray)
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        .padding(.leading)
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                VideoThumbnail(imageName: "MockTrendImage1")
            
                VideoThumbnail(imageName: "MockTrendImage2")
            
                VideoThumbnail(imageName: "MockTrendImage3")
            }
            .padding(.leading)
            .padding(.trailing)
        }
        
        
    }
}

#Preview {
    MockTrends()
}

struct VideoThumbnail: View {
    
    let imageName : String;
    
    var body: some View {
        ZStack{
            Image(imageName)
                .resizable()
                .frame(width: 140, height: 200)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(12)
            
            Button{
                
            } label: {
                HStack{
                    Image(systemName: "play.fill")
                        .foregroundStyle(.white)
                }
                
                .padding(7)
                .background(Color(UIColor(red: 29/255, green: 161/255, blue: 242/255, alpha: 1.0)))
                .clipShape(Circle())
            }
        }
    }
}
