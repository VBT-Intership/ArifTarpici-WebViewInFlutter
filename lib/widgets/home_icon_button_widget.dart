import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_vbt/utilities/general_variables.dart';

class HomeIconButtonWidget extends StatelessWidget {
  HomeIconButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.home),
      onPressed: () {
        _loadHtmlFromAssets();
      },
    );
  }

  _loadHtmlFromAssets() async {
    // We can not define fileHtmlContents with const keyword
    // Because assign to fileHtmlContents in runtime not compile time
    // We must assign last value in runtime for final
    // We must assign last value in compile time for const
    final String fileHtmlContents = await rootBundle.loadString(staticPageUrl);
    generalController.loadUrl(Uri.dataFromString(fileHtmlContents,
            mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }
}
