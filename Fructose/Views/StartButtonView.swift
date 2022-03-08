//
//  StartButtonView.swift
//  Fructose
//
//  Created by Anuj Soni on 08/03/22.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        
        Button(action: {
        print("Button Pressed")
        }, label: {
            HStack {
                Text("Start")
                Image(systemName:"arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,15)
            .padding(.vertical,10)
            .background{
                Capsule().strokeBorder(Color.white, lineWidth:1.25)
            }
        }).accentColor(.white)
        
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView().preferredColorScheme(.dark).previewLayout(.sizeThatFits)
    }
}
