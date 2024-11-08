//
//  ContentView.swift
//  test app swiftui
//
//  Created by Kalindu Agathisi on 2024-11-08.
//

import SwiftUI

struct ContentView: View {

    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")

    var body: some View {
        VStack {
            NavigationView {
                List {

                    ForEach(menu) { section in
                        Section(header: Text(section.name)) {

                            ForEach(section.items) { item in
                                ItemRowView(item: item)
                            }
                        }
                    }

                }
                .navigationTitle("Menu")
                .listStyle(GroupedListStyle())
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
