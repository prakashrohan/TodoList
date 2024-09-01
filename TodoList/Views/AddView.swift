//
//  AddView.swift
//  TodoList
//
//  Created by Rohan Prakash on 30/08/24.
//

import SwiftUI

struct AddView: View {
    
    @State var TextFieldText : String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("type something here", text: $TextFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.green)
                    .cornerRadius(10)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/,
                       label: {
                    Text("save" .uppercased())
                        .foregroundStyle(Color.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(15)
                        
                        
                })
                
            }
            .padding(14)
        }
        .navigationTitle("Add an Item")
    }
}

#Preview {
    NavigationStack{
        AddView()
    }
  
}
