import SwiftUI

struct ContentView: View {
    @State var enteredString: String = ""
    @State var passedURL: URL = URL(string: "https://www.apple.com")!
    
    var body: some View {
        Group {
            Divider()
            Text("WebLinks Challenge")
                .frame(maxWidth: .infinity, alignment: .center)
                .font(.title)
            Divider()
        }
        
        TextField("Enter URL", text: $enteredString)
            .multilineTextAlignment(.center)
            .textFieldStyle(.roundedBorder)
            .autocorrectionDisabled(true)
            .keyboardType(.webSearch)
            .padding()
            .onSubmit {
                passedURL = URL(string: enteredString)!
            }
        
        Divider()
        
        
        VStack {
            TabView {
                MVPView(enteredURL: $passedURL)
                    .tabItem {
                        Label("MVP", systemImage: "m.square")
                    }
                
                Stretch1View(enteredURL: $passedURL)
                    .tabItem {
                        Label("Stretch #1", systemImage: "01.square")
                    }
                
                Stretch2View(enteredURL: $passedURL)
                    .tabItem {
                        Label("Stretch #2", systemImage: "02.square")
                    }
                
                Stretch3View(enteredURL: $passedURL)
                    .tabItem {
                        Label("Stretch #3", systemImage: "03.square")
                    }
            }
            .accentColor(.blue)
        }
        
        Group {
            Image("MobileMakersEduNB")
                .resizable()
                .frame(maxWidth: .infinity)
                .scaledToFit()
        }.padding()
        
    }
}
