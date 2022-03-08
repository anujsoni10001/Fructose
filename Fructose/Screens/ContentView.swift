//
//  ContentView.swift
//  Fructose
//
//  Created by Anuj Soni on 08/03/22.

import SwiftUI

struct ContentView: View {
    
    var fruits :[Fruit] = fruitdata
    
    var body: some View {
    NavigationView {
    
//    List{
//
//            ForEach (fruits){ item in
//                FruitRowView(fruit:item)
//                    .onTapGesture {
//                        isChange = true
//                    }
//            }
//
//    }
    
    List(fruits) {
        item in
        NavigationLink(destination: FruitCardView(fruit: item)) {
                          FruitRowView(fruit:item)
                      }
        }
        
        
    .navigationBarTitleDisplayMode(.large)
    .navigationTitle("Fruits")
    }.navigationViewStyle(.stack)
    
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
