import SwiftUI

struct ContentView: View {
    
    @State var currentNumber: Int = 0
    
    func increment() {
        currentNumber+=1
    }
    
    func reset() {
        currentNumber = 0
    }
        
    var body: some View {
        Text("\(currentNumber)")
            .font(.system(size: 80))
        HStack {
            Button(action: {
                increment()
            }) {
                Text("Increment")
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
