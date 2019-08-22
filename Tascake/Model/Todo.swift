//
//  File.swift
//  Tood
//
//  Created by Torge Adelin on 01/07/2019.
//  Copyright © 2019 Torge Adelin. All rights reserved.
//
import Foundation
import SwiftUI

struct Todo: Identifiable, Hashable, Codable {
    var id: UUID = UUID()
    var done: Bool = false
    var title: String
    var text: String
    var category: String
    
    init(done: Bool, title: String, text: String, category: String) {
        self.done = done
        self.title = title
        self.text = text
        self.category = category
        self.id = UUID()
    }
}

//Don't forget to remove
let data: [Todo] = [
    Todo(done: false, title: "Buy Veggies", text: "Text", category: "Sports"),
    Todo(done: false, title: "Go to shopping with Rusti", text: "Text", category: "Sports"),
    Todo(done: false, title: "Love Clement", text: "Text", category: "Sports"),
    Todo(done: false, title: "Love Pui Pui More", text: "Text", category: "Sports")
]
