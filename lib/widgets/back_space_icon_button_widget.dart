import 'package:flutter/material.dart';
import 'package:webview_vbt/utilities/general_variables.dart';

class BackspaceIconButtonWidget extends StatelessWidget {
  BackspaceIconButtonWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(Icons.backspace, color: Colors.red),
        onPressed: () {
          generalController.goBack();
        });
  }
}
