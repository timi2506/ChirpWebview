import SwiftUI
import WebKit

struct ContentView: View {
    @State private var tabs: [TabModel] = [TabModel(urlString: "https://beta.chirpsocial.net")]
    @State private var selectedTabIndex: Int = 0

    var body: some View {

            TabView(selection: $selectedTabIndex) {
                ForEach(tabs.indices, id: \.self) { index in
                    WebView(webView: tabs[index].webViewModel.webView)
                        .tabItem {
                            Text(tabs[index].urlString)
                        }
                        .tag(index)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }

