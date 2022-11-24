import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CodeEditorScreen extends StatelessWidget {
  const CodeEditorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      gestureNavigationEnabled: false,
      initialUrl: 'https://flutter.dev',
      onWebResourceError: (WebResourceError webviewerrr) {
        print("Handle your Error Page here");
      },
    );
  }
}