//
//  UserManager.swift
//  TinderClone
//
//  Created by Gan Tu on 10/8/23.
//

import Foundation

class UserManager: ObservableObject {
    @Published var currentUser: User = User(name: "", imageURLS: [], bio: "", age: 0)
    @Published var matches: [Person] = []
    @Published var topPicks: [Person] = []
    
    var user: User {
        return currentUser
    }
    
    init() {
        loadUser()
        loadMatches()
        loadTopPicks()
    }
    
    private func loadUser() {
        // Mock networking here
        // self.currentUser = .goldSubscriberExample
        self.currentUser = .example
    }
    
    private func loadMatches() {
        // Mock networking here
        self.matches = Person.randomExamples(5)
    }
    
    private func loadTopPicks() {
        // Mock networking here
        self.topPicks = Person.randomExamples(4)
    }
}