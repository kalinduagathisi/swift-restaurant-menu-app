//
//  ItemRowView.swift
//  test app swiftui
//
//  Created by Kalindu Agathisi on 2024-11-08.
//

import SwiftUI

struct ItemRowView: View {
    let item: MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(.gray,lineWidth: 2))
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
                
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self) {restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundStyle(.white)
            }

        }
    }
}

#Preview {
    ItemRowView(item: MenuItem.example)
}
