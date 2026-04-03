import UIKit
import WebKit

class ViewController: UIViewController {

    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        webView = WKWebView(frame: self.view.frame)
        self.view.addSubview(webView)

        if let url = URL(string: "https://google.com") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
}
