import SwiftUI

struct ContentView: View {
    @State private var message = "Hello World"

    var body: some View {
        VStack(spacing: 16) {
            Text(message)
                .font(.title)
                .accessibilityIdentifier("helloLabel")

            Button("Tap me") {
                message = "Hello Button"
            }
            .accessibilityIdentifier("helloButton")
        }
        .padding(24)
    }
}

#Preview {
    ContentView()
}

