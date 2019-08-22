//
//  ContentView.swift
//  Tascake
//
//  Created by Torge Adelin on 14/08/2019.
//  Copyright © 2019 Torge Adelin. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView() {
            List(data) { todo in
                TodoItem(todo: todo)
            }
            
            
        }
        .navigationBarTitle(Text("Tasks"))
    }
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

struct TodoItem : View {
    var todo: Todo
    var body: some View {
        return Group {
            HStack() {
                Circle()
                    .frame(width: 30, height: 30)
                VStack(alignment: .leading) {
                    Text(todo.title)
                        .font(.headline)
                    Text(todo.text)
                        .font(.caption)
                }
                
                
                
            }
        }
    }
}
