//
//  ContentView.swift
//  SwiftUiApp
//
//  Created by Marko Poikkimäki on 2020-05-12.
//  Copyright © 2020 Marko Poikkimäki. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var titleColor: Color = Color.red
    
    var body: some View {
        GeometryReader { geometry in
        VStack(alignment: .center) {
            
            HStack(alignment: .top, spacing: 3) {
              Text("Swift UI APP is Cool!")
                .font(.largeTitle)
                .bold()
            }.background(self.titleColor)
             .foregroundColor(Color.white)
             .padding()
             .border(self.titleColor, width: 5)
             
            VStack {
                Text("Placeholder")
            }
            .padding()
            
            VStack(alignment: .center, spacing: 5) {
                
                Button(action: {
                    print("red button")
                    self.titleColor = Color.red
                }) {
                      Text("Red Button")
                      .padding()
                      .foregroundColor(Color.red)
                      .font(.title)
                      .border(Color.red, width: 5)
                }.frame(width: geometry.size.width)
                
                Button(action: {
                    print("green button")
                    self.titleColor = Color.green
                    }) {
                      Text("Green Button")
                      .padding()
                      .foregroundColor(Color.green)
                      .font(.title)
                      .border(Color.green, width: 5)
                }.frame(width: geometry.size.width)
                
                Button(action: {
                    print("blue button")
                    self.titleColor = Color.blue
                }) {
                      Text("Blue Button")
                      .padding()
                      .foregroundColor(Color.blue)
                      .font(.title)
                      .border(Color.blue, width: 5)
                }.frame(width: geometry.size.width)
            }
            .background(Color.gray)
            .padding()
            
            Spacer()

        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
