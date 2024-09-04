//
//  ItemModel.swift
//  TodoList
//
//  Created by Rohan Prakash on 30/08/24.
//

import Foundation

struct ItemModel: Identifiable , Codable{
    let id: String = UUID().uuidString
    let title : String
    var isCompleted : Bool
}
