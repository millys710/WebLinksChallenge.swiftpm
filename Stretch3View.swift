import SwiftUI

struct Stretch3View: View {
    @Binding var enteredURL: URL
    var body: some View {
       
        VStack {
            Text("Stretch #3")
                .font(.largeTitle)
                .underline()
                .padding()
            
            //MARK: Stretch #3 - Part II
            
            WebView(url: URL(string: "\(enteredURL)")!)
            
            
            
        }
        
    }
}

