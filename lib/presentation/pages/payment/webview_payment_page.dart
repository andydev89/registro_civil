import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewPaymentPage extends StatelessWidget {
  const WebviewPaymentPage({
    super.key,
    required this.url,
    this.onPageFinished,
  });
  final String url;
  final void Function()? onPageFinished;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..loadRequest(Uri.parse(url))
          ..setNavigationDelegate(
            NavigationDelegate(
              onPageFinished: (url) {
                onPageFinished?.call();
              },
            ),
          )
          ..setJavaScriptMode(JavaScriptMode.unrestricted),
      ),
    );
  }
}
