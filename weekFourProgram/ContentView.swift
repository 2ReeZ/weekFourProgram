//
//  ContentView.swift
//  weekFourProgram
//
//  Created by Macbook on 9/2/20.
//  Copyright © 2020 Arturo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data: UserData
    
    var body: some View {
        VStack {
        Text("Arturo's First Program")
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color.white)
            .padding(10.0)
            .border(Color.black, width: 4)
            .shadow(radius: 3)
            .background(Color.blue)
            .cornerRadius(7.0)
        Button(action: {
            self.data.counter += 1
            if self.data.counter > 25 {
                self.data.counter = 0
            }
        }) {
            Text("Counter = " + String(self.data.counter))
        }
        .padding(20.0)
        .background(Color.yellow)
        .cornerRadius(7.0)
            TextField("Placeholder", text: $data.text)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
