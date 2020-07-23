import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_vbt/utilities/general_variables.dart';

class BodyWidget extends StatelessWidget {
  BodyWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        onWebViewCreated: buildWebViewCreate,
        initialUrl: initialUrl,
      ),
    );
  }

  void buildWebViewCreate(WebViewController controller) {
    generalController = controller;
  }
}
