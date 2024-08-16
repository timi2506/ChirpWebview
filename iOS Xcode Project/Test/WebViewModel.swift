import SwiftUI
import WebKit

class WebViewModel: ObservableObject {
    let webView = WKWebView()

    func load(urlString: String) {
        let formattedUrlString = formatUrlString(urlString)
        if let url = URL(string: formattedUrlString) {
            webView.load(URLRequest(url: url))
        }
    }


    }

private func formatUrlString(_ urlString: String) -> String {
    return "https://beta.chirpsocial.net"

}
