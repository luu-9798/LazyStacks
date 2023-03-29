//
//  ContentView.swift
//  LazyStacks
//
//  Created by Trung Luu on 3/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(1...100, id: \.self) { item in
                        ListRow(id: item, type: "Horizontal")
                    }
                }
            }.frame(height: 100, alignment: .center)
            
            ScrollView(.vertical) {
                LazyVStack {
                    ForEach(1...100, id:\.self) { item in
                        ListRow(id: item, type: "Vertical")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
