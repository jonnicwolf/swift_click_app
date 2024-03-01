 //
//  ContentView.swift
//  swift_click_app
//
//  Created by Jonathan Narine on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentNumber: Int = 0
    
    func increment() {
        currentNumber+=1
    }
        
    var body: some View {
        Text("\(currentNumber)")
            .font(.system(size: 80))
        Button(action: {
            increment()
        }) {
            Text("Increment")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ContentView()
}
