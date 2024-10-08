import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {
    let webView: WKWebView

    func makeUIView(context: Context) -> WKWebView {
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        // No updates needed as the WKWebView is directly controlled by the WebViewModel
    }
}
