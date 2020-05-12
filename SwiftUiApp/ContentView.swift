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
        VStack {
            HStack {
              Text("Swift UI APP is Cool!")
                .font(.largeTitle)
                .bold()
            }.background(titleColor)
             .foregroundColor(Color.white)
             .padding()
             .border(titleColor, width: 5)
            

            VStack {
                Text("Placeholder")
            }
            .padding()
            
            VStack {
                Button(action: {
                    print("red button")
                    self.titleColor = Color.red
                }) {
                      Text("Red Button")
                      .padding()
                      .foregroundColor(Color.red)
                      .font(.title)
                      .border(Color.red, width: 5)
                }
                Button(action: {
                    print("green button")
                    self.titleColor = Color.green
                }) {
                      Text("Green Button")
                      .padding()
                      .foregroundColor(Color.green)
                      .font(.title)
                      .border(Color.green, width: 5)
                }
                Button(action: {
                    print("blue button")
                    self.titleColor = Color.blue
                }) {
                      Text("Blue Button")
                      .padding()
                      .foregroundColor(Color.blue)
                      .font(.title)
                      .border(Color.blue, width: 5)
                }
            }
            .background(Color.gray)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
