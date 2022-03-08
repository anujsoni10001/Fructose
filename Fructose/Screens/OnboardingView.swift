//
//  OnboardingView.swift
//  Fructose
//
//  Created by Anuj Soni on 08/03/22.
//

import SwiftUI

struct OnboardingView: View {
    
    var fruits:[Fruit] = fruitdata
    
    var body: some View {
        
        
        TabView{
        
            ForEach (fruits[0...5]){ item in
                FruitCardView(fruit:item)
            }
        
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.horizontal,10)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
