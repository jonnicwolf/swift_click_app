import SwiftUI

struct ContentView: View {
    
    @State var currentNumber: Int = 0
    @State var increaseIncrememnt: Bool = false
    @State var incrementNumber: Int = 1
    
    func increment() {
        currentNumber+=incrementNumber
        
        if currentNumber >= 3 {
            increaseIncrememnt = true
        }
        else {increaseIncrememnt = false}
    }
    
    func reset() {
        currentNumber = 0
        increaseIncrememnt = false
        incrementNumber = 1
    }
    
    func buyIncrement() {
        if currentNumber >= 3 {
            currentNumber -=  3
            incrementNumber += 1
        }
    }
        
    var body: some View {
        Text("\(currentNumber)")
            .font(.system(size: 80))
        HStack {
            Button(action: {
                increment()
            }) {
                Text("Increment +\(incrementNumber)")
                    .padding()
            }
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)

            Button(action: {
                reset()
            }) {
                Text("Reset")
                    .padding()
            }
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
            
            if increaseIncrememnt {
                Button(action: {
                    buyIncrement()
                }) {
                    Text("Upgrade increment for 3 pts")
                        .padding()
                }
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .controlSize(.large)
    }
}

// Preview code...


// Preview code...


#Preview {
    ContentView()
}
