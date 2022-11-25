import 'dart:async';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CodeEditorScreen extends StatefulWidget {
  const CodeEditorScreen({Key? key}) : super(key: key);

  @override
  State<CodeEditorScreen> createState() => _CodeEditorScreenState();
}

class _CodeEditorScreenState extends State<CodeEditorScreen> {
  WebView? web;
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controller.complete(webViewController);
              webViewController.runJavascript(
                  "const elements = document.getElementsByClassName(\"jsx-3405587965 css-1pspcfr\");"
                  "while (elements.length > 0) elements[0].remove();"
                  "const element = document.getElementsByClassName(\"jsx-428302334 v-stack\");"
                  "while (element.length > 0) element[0].remove();"
                  "const elemen = document.getElementsByClassName(\"jsx-3141006289 feature-previews\");"
                  "while (elemen.length > 0) elemen[0].remove();"
                  "const eleme = document.getElementsByClassName(\"jsx-779354107 signup-footer\");"
                  "while (eleme.length > 0) eleme[0].remove();"
                  "const elem = document.getElementsByClassName(\"jsx-43d8345bc5475e3f footer\");"
                  "while (elem.length > 0) elem[0].remove();"
                  "const el = document.getElementsByClassName(\"jsx-339383026 cursor-container\");"
                  "while (el.length > 0) el[0].remove();"
                  "window.onscroll = function () { window.scrollTo(130, 130); };"
                  "const ele = document.getElementsByClassName(\"jsx-1099629460 right\");"
                  "while (ele.length > 0) ele[0].remove();");
            },
            zoomEnabled: false,
            initialUrl: 'https://replit.com/languages/python3',
          ),
        ),
      ],
    );
  }
}
