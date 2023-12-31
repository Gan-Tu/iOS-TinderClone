//
//  Person.swift
//  TinderClone
//
//  Created by Gan Tu on 9/8/23.
//

import Foundation
import LoremSwiftum

struct Person: Hashable, Identifiable {
    // use real userId in real life
    let id = UUID().uuidString
    
    var name: String
    var age: Int
    var bio: String
    var imageURLS: [URL]
    var conversations: [Message] = []
}

extension Person {
    static let example = Person(
        name: "Alex",
        age: 33,
        bio: "I am photographer and love dogs. \(Lorem.sentences(2))",
        imageURLS: [
            URL(string: "https://i.pravatar.cc/400?img=52")!,
            URL(string: "https://i.pravatar.cc/401")!,
            URL(string: "https://i.pravatar.cc/402")!,
            URL(string: "https://i.pravatar.cc/403")!
        ],
        conversations: [
            Message.exampleReceived,
            Message.exampleSent,
            Message(content: "Hello there. How are you doing today? How's the weather over there.", fromCurrentUser: false)
        ]
    )
    static let example2 = Person(
        name: "Jessica",
        age: 30,
        bio: "I like to go to the beach. \(Lorem.sentences(2))",
        imageURLS: [
            URL(string: "https://i.pravatar.cc/400?img=49")!,
            URL(string: "https://i.pravatar.cc/401")!,
            URL(string: "https://i.pravatar.cc/402")!,
            URL(string: "https://i.pravatar.cc/403")!
        ],
        conversations: [
            Message.exampleReceived,
            Message.exampleSent,
            Message(content: "Wanna grab a coffee?", fromCurrentUser: false)
        ]
    )
    static let example3 = Person(
        name: "Steven",
        age: 34,
        bio: "Nerdy boy who looks for love. \(Lorem.sentences(2))",
        imageURLS: [
            URL(string: "https://i.pravatar.cc/400?img=53")!,
            URL(string: "https://i.pravatar.cc/401")!,
            URL(string: "https://i.pravatar.cc/402")!,
            URL(string: "https://i.pravatar.cc/403")!
        ],
        conversations: [
            Message.exampleReceived,
            Message.exampleSent,
            Message(content: "I am free Thursday. Where do you want to meet up?", fromCurrentUser: false)
        ]
    )
    static let example4 = Person(
        name: "Cove",
        age: 26,
        bio: "Fashion Designer. \(Lorem.sentences(2))",
        imageURLS: [
            URL(string: "https://i.pravatar.cc/400?img=36")!,
            URL(string: "https://i.pravatar.cc/401")!,
            URL(string: "https://i.pravatar.cc/402")!,
            URL(string: "https://i.pravatar.cc/403")!
        ],
        conversations: [
            Message.exampleReceived,
            Message.exampleSent,
            Message(content: "I am travelling to Australia in May. How about you?", fromCurrentUser: false)
        ]
    )
    static let example5 = Person(
        name: "Parker",
        age: 24,
        bio: "I love playing basketball and soccer. \(Lorem.sentences(2))",
        imageURLS: [
            URL(string: "https://i.pravatar.cc/400?img=12")!,
            URL(string: "https://i.pravatar.cc/401")!,
            URL(string: "https://i.pravatar.cc/402")!,
            URL(string: "https://i.pravatar.cc/403")!
        ],
        conversations: [
            Message.exampleReceived,
            Message.exampleSent,
            Message(content: "Sup, cutie! Would love to meet up.", fromCurrentUser: false)
        ]
    )
    static let example6 = Person(
        name: "Melisa",
        age: 22,
        bio: "Savage Girl on the app. \(Lorem.sentences(2))",
        imageURLS: [
            URL(string: "https://i.pravatar.cc/400?img=43")!,
            URL(string: "https://i.pravatar.cc/401")!,
            URL(string: "https://i.pravatar.cc/402")!,
            URL(string: "https://i.pravatar.cc/403")!
        ],
        conversations: [
            Message.exampleReceived,
            Message.exampleSent,
            Message(content: "On my way.", fromCurrentUser: false)]
    )
    static let example7 = Person(
        name: "Brent",
        age: 28,
        bio: "Gym rat. \(Lorem.sentences(2))",
        imageURLS: [
            URL(string: "https://i.pravatar.cc/400?img=14")!,
            URL(string: "https://i.pravatar.cc/401")!,
            URL(string: "https://i.pravatar.cc/402")!,
            URL(string: "https://i.pravatar.cc/403")!
        ],
        conversations: [
            Message.exampleReceived,
            Message.exampleSent,
            Message(content: "I don't think we are a fit. Sorry", fromCurrentUser: false)
        ]
    )
    
    
    static let allExamples: [Person] = [example, example2, example3, example4, example5, example6, example7]
    
    static func randomExamples(_ count: Int) -> [Person] {
        return Array(allExamples.shuffled().prefix(count))
    }
}
