//
//  RecentMessages.swift
//  Messenger
//
//  Created by Graham Louis on 10/20/23.
//

import Foundation
import FirebaseFirestoreSwift


struct RecentMessages: Codable, Identifiable {
    @DocumentID var id: String?

    let text, fromId, toId: String
    let email, profileImageUrl: String
    let timestamp: Date
    
    var username: String {
            email.components(separatedBy: "@").first ?? email
        }
        
    var timeAgo: String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .abbreviated
        return formatter.localizedString(for: timestamp, relativeTo: Date())
    }

}
