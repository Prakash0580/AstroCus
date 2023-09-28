// ignore: must_be_immutable
import '/utils/common_style.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? elevation;
  final bool? boolLeading, centerTitle, actions;
  bool? isLogin;
  final Widget? leading, titleWidget;
  final Function? onTap;
  final String? title;
  final List<Widget>? actionList;
  final Color? bgColor, txtColor;
  final AppBar appBar = AppBar();
  BaseAppBar(
      {Key? key,
      this.boolLeading,
      this.elevation,
      this.actions,
      this.isLogin,
      this.leading,
      this.centerTitle,
      this.onTap,
      this.title,
      this.titleWidget,
      this.bgColor,
      this.txtColor,
      this.actionList})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: appBarColor,
        elevation: elevation,
        automaticallyImplyLeading: boolLeading ?? true,
        leading: leading,
        title: titleWidget ??
            Text(title!,
                style: TextStyle(
                    color: txtColor ?? Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w400)),
        centerTitle: centerTitle ?? false,
        actions: actionList);
  }
}
