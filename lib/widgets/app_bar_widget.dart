import 'package:flutter/material.dart';
import 'back_space_icon_button_widget.dart';
import 'home_icon_button_widget.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(50);
  AppBarWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: HomeIconButtonWidget(),
      actions: <Widget>[BackspaceIconButtonWidget()],
      title: buildAppBarTitle(),
    );
  }

  Center buildAppBarTitle() {
    return Center(
      child: Text(
        "My Custom App Bar",
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}
