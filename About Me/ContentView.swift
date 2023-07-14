//
//  ContentView.swift
//  About Me
//
//  Created by Kelsey McIntyre on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var fact1 = ""
    @State private var fact2 = ""
    
    var body: some View {
        ZStack {
            Color(red: 0.96, green: 0.69, blue: 0.85)
            .ignoresSafeArea()
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Kelsey McIntyre"/*@END_MENU_TOKEN@*/)
                    .font(.title)
                    .foregroundColor(Color(hue: 0.857, saturation: 0.393, brightness: 0.346))
                Text(/*@START_MENU_TOKEN@*/"all about me!"/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color(hue: 0.857, saturation: 0.393, brightness: 0.346))
                HStack {
                    VStack {
                        Image("dogs")
                            .resizable(capInsets: EdgeInsets(), resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                        Button("Learn More!") {
                            fact1 = "I have two dogs named Oakley (left) and Hazel  (right)!"
                        }
                        .buttonStyle(.borderedProminent)
                        .tint((Color(hue: 0.857, saturation: 0.393, brightness: 0.346)))
                        Text(fact1)
                    }
                    VStack {
                        Image("paris")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                            .cornerRadius(/*@START_MENU_TOKEN@*/15.0/*@END_MENU_TOKEN@*/)
                        Button("Learn More!") {
                            fact2 = "I love to travel! I visted Paris last Spring."
                        }
                        .buttonStyle(.borderedProminent)
                        .tint((Color(hue: 0.857, saturation: 0.393, brightness: 0.346)))
                        Text(fact2)

                        
                    }
                    
                }
            } .padding()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
