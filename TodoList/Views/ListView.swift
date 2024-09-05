import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "this is the first", isCompleted: true),
        ItemModel(title: "this is the second", isCompleted: false),
        ItemModel(title: "this is the third", isCompleted: false)
    ]
    
    @State private var searchText = ""
    
    var filteredItems: [ItemModel] {
        if searchText.isEmpty {
            return items
        } else {
            return items.filter { $0.title.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    var body: some View {
        ZStack {
            VStack {
                SearchBar(text: $searchText)
                List {
                    ForEach(filteredItems) { item in
                        ListRowView(item: item)
                            .onTapGesture {
                                toggleItemCompletion(item: item)
                            }
                            .swipeActions(edge: .leading) {
                                Button {
                                    toggleItemCompletion(item: item)
                                } label: {
                                    Label("Complete", systemImage: item.isCompleted ? "xmark.circle" : "checkmark.circle")
                                }
                                .tint(item.isCompleted ? .red : .green)
                            }
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
        }
    }
    
    func deleteItem(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
    
    func toggleItemCompletion(item: ItemModel) {
        if let index = items.firstIndex(where: { $0.id == item.id }) {
            items[index].isCompleted.toggle()
        }
    }
}

#Preview {
    NavigationStack{
        ListView()
    }
}
