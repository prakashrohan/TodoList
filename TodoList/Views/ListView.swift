//
//  ListView.swift
//  TodoList
//
//  Created by Rohan Prakash on 30/08/24.
//

import SwiftUI

struct ListView: View {
    
    @State var items : [ItemModel] = [
        ItemModel(title: "this is the first", isCompleted: true),
        ItemModel(title: "this is the second", isCompleted: false)
    ]
    
    var body: some View {
        List{
            ForEach(items){ item in
            ListRowView(item: item)
            }
        }
        .navigationTitle("Todo List📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
        
    }
}

#Preview {
    NavigationStack{
        ListView()
    }
    }
   

