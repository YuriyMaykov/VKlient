//
//  UserModel.swift
//  Vk&Maykov
//
//  Created by Юрий on 03/10/2019.
//  Copyright © 2019 Yuriy. All rights reserved.
//

import UIKit

class UserModel {
    var userId: Int
    var userName: String
    var userAvatar: UIImage?
    var userEmail: String
    
    init(userId: Int, userName: String, userAvatar: UIImage, userEmail: String) {
        self.userId = userId
        self.userName = userName
        self.userAvatar = userAvatar
        self.userEmail = userEmail
    }
}
