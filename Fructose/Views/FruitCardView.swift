//
//  FruitCardView.swift
//  Fructose
//
//  Created by Anuj Soni on 08/03/22.
//

import SwiftUI

struct FruitCardView: View {
    
    @State private var isAnimating : Bool = false
    
    var fruit:Fruit
    
    var body: some View {
        
        ZStack {
            
            VStack(spacing:20){
                Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color:Color.black, radius:20, x: 5, y: 5)
                .scaleEffect(isAnimating ? 1.0 : 0.5)
                
                Text(fruit.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    .shadow(color:.black, radius: 10, x: 5, y: 5)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,15)
                    .frame(maxWidth:.infinity)
                
                StartButtonView()
            }
        }
        .onAppear{
        withAnimation(.easeOut(duration:0.5)){
            //isAnimating = true
            isAnimating.toggle()
        }
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment:.center)
        .background(LinearGradient(gradient:Gradient(colors: fruit.gradientColors), startPoint:.leading, endPoint: .trailing))
        .cornerRadius(20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit:fruitdata[0])
          .previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width:320, height: 640))
    }
}
