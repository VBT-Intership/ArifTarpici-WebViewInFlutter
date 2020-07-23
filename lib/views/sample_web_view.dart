import 'package:flutter/material.dart';
import 'package:webview_vbt/widgets/app_bar_widget.dart';
import 'package:webview_vbt/widgets/body_widget.dart';

class SampleWebView extends StatefulWidget {
  SampleWebView({Key key}) : super(key: key);

  @override
  _SampleWebViewState createState() => _SampleWebViewState();
}

class _SampleWebViewState extends State<SampleWebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: BodyWidget(),
    );
  }
}
