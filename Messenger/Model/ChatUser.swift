//
//  ChatUser.swift
//  Messenger
//
//  Created by Graham Louis on 10/2/23.
//

import Foundation

struct ChatUser: Identifiable {
    
    var id: String {uid}
    
    let uid, email, profileImageUrl: String

    init(data: [String: Any]) {
        self.uid = data["uid"] as? String ?? ""
        self.email  = data["email"] as? String ?? ""
        self.profileImageUrl  = data["profile"] as? String ?? ""
    }
}
