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
        ItemModel(title: "this is the second", isCompleted: false),
        ItemModel(title: "this is the third", isCompleted: false)
    ]
    
    var body: some View {
        List{
            ForEach(items){ item in
            ListRowView(item: item)
            }
            .onDelete(perform: deleteItem)
            .onMove(perform: moveItem)
        }
        
        .navigationTitle("Todo List📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
        
    }
    func deleteItem(indexset : IndexSet){
        items.remove(atOffsets:indexset)
    }
    
    func moveItem(from : IndexSet , to : Int){
        items.move(fromOffsets: from , toOffset: to)
    }
    
}

#Preview {
    NavigationStack{
        ListView()
    }
    }
   

