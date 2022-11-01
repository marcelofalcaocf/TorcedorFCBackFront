//
//  ProfileViewModel.swift
//  TorcedorFC
//
//  Created by Marcelo Falcao Costa Filho on 01/11/22.
//

import Foundation
import FirebaseAuth
import FirebaseCore

class ProfileViewModel {
    
    private var user: User? {
        Auth.auth().currentUser
    }
    
//    public var person: Person? {
//        guard let name = user?.displayName, let email = user?.email else { return nil }
//        
//        return .init(name: name, email: email)
//    }
    
    var getName: String {
        guard let name = user?.displayName else { return "Aqui é sua área TorcedorFC" }
        return name
    }
    
    var getEmail: String? {
        guard let email = user?.email else { return nil }
        return email
    }
}
