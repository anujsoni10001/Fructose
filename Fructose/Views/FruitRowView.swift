//
//  FruitRowView.swift
//  Fructose
//
//  Created by Anuj Soni on 08/03/22.
//

import SwiftUI

struct FruitRowView: View {
    
    var fruit : Fruit
    
    var body: some View {
        HStack {
            Image(fruit.image)
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .frame(width: 80, height: 80, alignment:.center)
            .shadow(color:.black, radius: 10, x: 5, y: 5)
            .background(LinearGradient(gradient:Gradient(colors: fruit.gradientColors), startPoint:.leading, endPoint: .trailing))
        .cornerRadius(10)
            
            VStack(alignment:.leading, spacing:8){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
        }
        }

    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit:fruitdata[0]).previewLayout(.sizeThatFits)
            .padding()
    }
}
