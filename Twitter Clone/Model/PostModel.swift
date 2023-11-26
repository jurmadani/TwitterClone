//
//  PostModel.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 26.11.2023.
//

import Foundation

final class PostModel {
    let postId: String
    let author: UserModel
    let content: String
    let timestamp: Date
    var likes: Int
    var comments: [CommentModel]
    var retweets : [RetweetModel]
    var views : Int
    
    init(postId: String, author: UserModel, content: String, timestamp: Date, likes: Int, comments: [CommentModel], retweets : [RetweetModel], views : Int) {
        self.postId = postId
        self.author = author
        self.content = content
        self.timestamp = timestamp
        self.likes = likes
        self.comments = comments
        self.retweets = retweets
        self.views = views
    }
    
    // Computed property to calculate relative timestamp
    func relativeTimestamp() -> String {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year, .month, .day, .hour, .minute], from: self.timestamp, to: Date())
        
        if let years = components.year, years > 0 {
            return "\(years)y ago"
        } else if let months = components.month, months > 0 {
            return "\(months)m ago"
        } else if let days = components.day, days > 0 {
            return "\(days)d ago"
        } else if let hours = components.hour, hours > 0 {
            return "\(hours)h ago"
        } else if let minutes = components.minute, minutes > 0 {
            return "\(minutes)m ago"
        } else {
            return "Just now"
        }
    }
}


//mock data
let user1 = UserModel(userId: "1", username: "john_doe", fullName: "John Doe")
let user2 = UserModel(userId: "2", username: "jane_smith", fullName: "Jane Smith")
let user3 = UserModel(userId: "3", username: "bob_jones", fullName: "Bob Jones")

let comment1 = CommentModel(commentId: "101", author: user2, text: "Great post!", timestamp: Date().addingTimeInterval(-600))
let comment2 = CommentModel(commentId: "102", author: user1, text: "Thanks!", timestamp: Date().addingTimeInterval(-540))

let post1 = PostModel(postId: "201", author: user1, content: "Hello, World!", timestamp: Date().addingTimeInterval(-480), likes: 5, comments: [comment1, comment2], retweets: [], views: 100)

let comment3 = CommentModel(commentId: "103", author: user1, text: "Awesome!", timestamp: Date().addingTimeInterval(-420))
let comment4 = CommentModel(commentId: "104", author: user2, text: "Keep it up!", timestamp: Date().addingTimeInterval(-360))

let post2 = PostModel(postId: "202", author: user2, content: "Just finished a great book!", timestamp: Date().addingTimeInterval(-300), likes: 8, comments: [comment3, comment4], retweets: [], views: 150)

let comment5 = CommentModel(commentId: "105", author: user3, text: "Nice one!", timestamp: Date().addingTimeInterval(-240))
let comment6 = CommentModel(commentId: "106", author: user1, text: "I love this!", timestamp: Date().addingTimeInterval(-180))

let post3 = PostModel(postId: "203", author: user3, content: "Excited for the weekend! 🎉", timestamp: Date().addingTimeInterval(-120), likes: 10, comments: [comment5, comment6], retweets: [], views: 120)

let comment7 = CommentModel(commentId: "107", author: user2, text: "Amazing content!", timestamp: Date().addingTimeInterval(-60))
let comment8 = CommentModel(commentId: "108", author: user3, text: "I agree!", timestamp: Date())

let post4 = PostModel(postId: "204", author: user1, content: "Exploring new places.", timestamp: Date().addingTimeInterval(60), likes: 6, comments: [comment7, comment8], retweets: [], views: 200)

let comment9 = CommentModel(commentId: "109", author: user1, text: "Coding all night!", timestamp: Date().addingTimeInterval(120))
let comment10 = CommentModel(commentId: "110", author: user2, text: "Impressive!", timestamp: Date().addingTimeInterval(180))

let post5 = PostModel(postId: "205", author: user2, content: "Coffee and code.", timestamp: Date().addingTimeInterval(-1240), likes: 12, comments: [comment9, comment10], retweets: [], views: 180)

let comment11 = CommentModel(commentId: "111", author: user3, text: "Hiking in the mountains.", timestamp: Date().addingTimeInterval(300))
let comment12 = CommentModel(commentId: "112", author: user1, text: "Beautiful view!", timestamp: Date().addingTimeInterval(360))

let post6 = PostModel(postId: "206", author: user3, content: "Learning a new language.", timestamp: Date().addingTimeInterval(-93420), likes: 7, comments: [comment11, comment12], retweets: [], views: 250)

let mockData: [PostModel] = [post1, post2, post3, post4, post5, post6]


// Add more users, comments, and posts as needed for your mock data

