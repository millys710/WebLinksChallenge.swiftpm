import SwiftUI
import SafariServices

//MARK: Stretch #2 - Part I
struct SafariView: UIViewControllerRepresentable{
    
    let url: URL
    
    func makeUIViewController(context: Context) -> some UIViewController {
        return SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
