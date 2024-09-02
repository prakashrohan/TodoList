//
//  ListRowView.swift
//  TodoList
//
//  Created by Rohan Prakash on 30/08/24.
//

import SwiftUI

struct ListRowView: View {
    
    let item : ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
    }
}
var item2 = ItemModel(title: "thids is the second", isCompleted: true)
var item1 = ItemModel(title: "thids is the first", isCompleted: false)
var item3 = ItemModel(title: "thids is the third", isCompleted: false)
#Preview {
    
    ListRowView(item: item2)
}
