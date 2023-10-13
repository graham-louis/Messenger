//
//  FirebaseManager.swift
//  Messenger
//
//  Created by Graham Louis on 10/2/23.
//

import Foundation
import Firebase
import FirebaseFirestore
import FirebaseStorage


class FirebaseManager: NSObject {
    let auth: Auth
    let storage: Storage
    let firestore: Firestore
    
    static let shared = FirebaseManager()
    
    override init(){
        FirebaseApp.configure()
        
        self.auth = Auth.auth()
        self.storage = Storage.storage()
        self.firestore = Firestore.firestore()
        
        super.init()
    }
}
