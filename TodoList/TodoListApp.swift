//
//  TodoListApp.swift
//  TodoList
//
//  Created by Rohan Prakash on 30/08/24.
//

import SwiftUI

@main
struct TodoListApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ListView()
            }
        }
    }
}
