import SwiftUI

struct Stretch2View: View {
    @Binding var enteredURL: URL
    var body: some View {
        
        VStack {
            Text("Stretch #2")
                .font(.largeTitle)
                .underline()
                .padding()
            
            //MARK: Stretch #2 - Part II
            SafariView(url: URL(string:"\(enteredURL)")!)
            
            
            
            
        }
        
    }
}
