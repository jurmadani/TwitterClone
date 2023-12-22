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
    let postImage: String?
    
    init(postId: String, author: UserModel, content: String, timestamp: Date, likes: Int, comments: [CommentModel], retweets : [RetweetModel], views : Int, postImage: String?) {
        self.postId = postId
        self.author = author
        self.content = content
        self.timestamp = timestamp
        self.likes = likes
        self.comments = comments
        self.retweets = retweets
        self.views = views
        self.postImage = postImage
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

let post1 = PostModel(postId: "201", author: user1, content: "Hello, World!", timestamp: Date().addingTimeInterval(-480), likes: 5, comments: [comment1, comment2], retweets: [], views: 100, postImage: nil)

let comment3 = CommentModel(commentId: "103", author: user1, text: "Awesome!", timestamp: Date().addingTimeInterval(-420))
let comment4 = CommentModel(commentId: "104", author: user2, text: "Keep it up!", timestamp: Date().addingTimeInterval(-360))

let post2 = PostModel(postId: "202", author: user2, content: "Just finished a great book!", timestamp: Date().addingTimeInterval(-300), likes: 8, comments: [comment3, comment4], retweets: [], views: 150, postImage: nil)

let comment5 = CommentModel(commentId: "105", author: user3, text: "Nice one!", timestamp: Date().addingTimeInterval(-240))
let comment6 = CommentModel(commentId: "106", author: user1, text: "I love this!", timestamp: Date().addingTimeInterval(-180))

let post3 = PostModel(postId: "203", author: user3, content: "Excited for the weekend! 🎉", timestamp: Date().addingTimeInterval(-120), likes: 10, comments: [comment5, comment6], retweets: [], views: 120, postImage: nil)

let comment7 = CommentModel(commentId: "107", author: user2, text: "Amazing content!", timestamp: Date().addingTimeInterval(-60))
let comment8 = CommentModel(commentId: "108", author: user3, text: "I agree!", timestamp: Date())

let post4 = PostModel(postId: "204", author: user1, content: "Exploring new places.", timestamp: Date().addingTimeInterval(60), likes: 6, comments: [comment7, comment8], retweets: [], views: 200, postImage: nil)

let comment9 = CommentModel(commentId: "109", author: user1, text: "Coding all night!", timestamp: Date().addingTimeInterval(120))
let comment10 = CommentModel(commentId: "110", author: user2, text: "Impressive!", timestamp: Date().addingTimeInterval(180))

let post5 = PostModel(postId: "205", author: user2, content: "Coffee and code.", timestamp: Date().addingTimeInterval(-1240), likes: 12, comments: [comment9, comment10], retweets: [], views: 180, postImage: nil)

let comment11 = CommentModel(commentId: "111", author: user3, text: "Hiking in the mountains.", timestamp: Date().addingTimeInterval(300))
let comment12 = CommentModel(commentId: "112", author: user1, text: "Beautiful view!", timestamp: Date().addingTimeInterval(360))

let post6 = PostModel(postId: "206", author: user3, content: "Learning a new language.", timestamp: Date().addingTimeInterval(-93420), likes: 7, comments: [comment11, comment12], retweets: [], views: 250, postImage: nil)

let mockData: [PostModel] = [post1, post2, post3, post4, post5, post6, post1, post2, post3, post4 ,post5, post6]


//profile own tweets mock data
let user4 = UserModel(userId: "4", username: "elonmusk", fullName: "Elon Musk")
let post7 = PostModel(postId: "4234", author: user3, content: "My brand new tesla!", timestamp: Date().addingTimeInterval(-93420), likes: 7, comments: [comment11, comment12], retweets: [], views: 4353, postImage: "MockPostImage1")
let post8 = PostModel(postId: "123", author: user3, content: "SpaceX it's fantastic, you should try to go to the moon!", timestamp: Date().addingTimeInterval(-93420), likes: 7, comments: [comment11, comment12], retweets: [], views: 250, postImage: "MockPostImage2")
let post9 = PostModel(postId: "867", author: user3, content: "I am a cyborg...", timestamp: Date().addingTimeInterval(-93420), likes: 7, comments: [comment11, comment12], retweets: [], views: 1243, postImage: nil)
let post10 = PostModel(postId: "423", author: user3, content: "This platform aspires to be the best (or least bad) source of truth on the Internet", timestamp: Date().addingTimeInterval(-93420), likes: 7, comments: [comment11, comment12], retweets: [], views: 250, postImage: nil)
let post11 = PostModel(postId: "45763", author: user3, content: "Castelul Peles, something it's weird about it...", timestamp: Date().addingTimeInterval(-93420), likes: 7, comments: [comment11, comment12], retweets: [], views: 5543, postImage: "MockPostImage3")
let post12 = PostModel(postId: "3", author: user3, content: "You’ll soon also be paid for ads appearing when others view your profile page, approximately doubling payouts", timestamp: Date().addingTimeInterval(-93420), likes: 1237, comments: [comment11, comment12], retweets: [], views: 250, postImage: nil)
let post13 = PostModel(postId: "645", author: user3, content: "Sharing things I'm learning through my foundation work and other interests.", timestamp: Date().addingTimeInterval(-93420), likes: 7, comments: [comment11, comment12], retweets: [], views: 250, postImage: nil)
let profileTweetsMockData: [PostModel] = [post7, post8, post9, post10, post11, post12, post13]

// Add more users, comments, and posts as needed for your mock data


//Trends mock data array

let trend1 = TrendsModel(id: 1, category: "Gaming", trending: true, title: "Cyberpunk 2077 Update", tweets: "2.8M")
let trend2 = TrendsModel(id: 2, category: "Entertainment", trending: false, title: "New Marvel Movie Premiere", tweets: "3.2M")
let trend3 = TrendsModel(id: 3, category: "Technology", trending: true, title: "Foldable Smartphones", tweets: "1.5M")
let trend4 = TrendsModel(id: 4, category: "Music", trending: false, title: "Top 10 Chart Hits", tweets: "2.1M")
let trend5 = TrendsModel(id: 5, category: "Travel", trending: false, title: "Exotic Vacation Spots", tweets: "1.7M")


let trendsMockData : [TrendsModel] = [trend1, trend2, trend3, trend4, trend5]

let notifications: [NotificationModel] = [
    NotificationModel(title: "JohnDoe", description: "Just posted a new selfie! 🤳"),
    NotificationModel(title: "AliceSmith", description: "Excited about the upcoming project. Stay tuned!"),
    NotificationModel(title: "TechEnthusiast", description: "Check out this cool tech gadget. #TechTuesday"),
    NotificationModel(title: "SportsFanatic", description: "What a game! 🏀 #SportsTalk"),
    NotificationModel(title: "TravelExplorer", description: "Amazing views from my latest trip. #TravelGoals"),
    NotificationModel(title: "Foodie", description: "Delicious homemade recipe. #FoodieFriday"),
    NotificationModel(title: "Bookworm", description: "Just finished reading an incredible book. 📚 #BookClub"),
    NotificationModel(title: "GamingGuru", description: "New game alert! 🎮 Who's playing?"),
    NotificationModel(title: "FitnessFan", description: "Reached a new fitness milestone. 💪 #FitnessJourney"),
    NotificationModel(title: "MusicLover", description: "Discovering new tunes. 🎶 #MusicMonday")
]
