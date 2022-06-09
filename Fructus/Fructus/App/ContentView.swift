//
//  ContentView.swift
//  Fructus
//
//  Created by Pavel Bohomolnyi on 29/05/2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    @State private var isShowingSetting: Bool = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowingSetting = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } //: Button
                    .sheet(isPresented: $isShowingSetting) {
                        SettingsView()
                    }
            )
        } //: Navigation
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
