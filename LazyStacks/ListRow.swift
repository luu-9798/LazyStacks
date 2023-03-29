//
//  ListRow.swift
//  LazyStacks
//
//  Created by Trung Luu on 3/28/23.
//

import SwiftUI

struct ListRow: View {
    let id: Int
    let type: String
    
    init(id: Int, type: String) {
        print("Loading \(type) item \(id)")
        self.id = id
        self.type = type
    }
    
    var body: some View {
        Text("\(type) \(id)").padding()
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(id: 0, type: "Horizontal")
    }
}
