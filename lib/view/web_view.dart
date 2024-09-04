import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewww extends StatefulWidget {
  const WebViewww({super.key, required this.url});
  final String url;

  @override
  State<WebViewww> createState() => _WebViewwwState();
}

class _WebViewwwState extends State<WebViewww> {
  late final WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.disabled)
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
