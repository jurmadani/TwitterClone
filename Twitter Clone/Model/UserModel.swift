//
//  UserModel.swift
//  Twitter Clone
//
//  Created by Daniel Jurma on 26.11.2023.
//

import Foundation

final class UserModel {
    let userId: String
    let username: String
    let fullName: String

    init(userId: String, username: String, fullName: String) {
        self.userId = userId
        self.username = username
        self.fullName = fullName
    }
}
