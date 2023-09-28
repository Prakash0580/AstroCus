import '/utils/common_style.dart';
import '/utils/urlname_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleAvtar extends StatelessWidget {
  final String? path;
  const CircleAvtar({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        backgroundColor: AppColor.circlrAvtarBackgroundColor,
        radius: 60,
        child: Image.asset(
          path!,
          width: 60,
        ));
  }
}

class AuthCompents extends StatelessWidget {
  const AuthCompents({super.key, this.title, this.desc, this.child});
  final String? title, desc;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.backgroundColr,
      width: double.infinity,
      child: Column(
        children: [
          heightSizedBox(60.0),
          const CircleAvtar(path: 'assets/images/sms.png'),
          heightSizedBox(50.0),
          Text(title ?? "Phone Number", style: textStyle1),
          heightSizedBox(20.0),
          Text(desc ?? "We need to send OTP to authenticate your number",
              style: textStyle2),
          heightSizedBox(60.0),
          Expanded(
              child: Container(
                  width: width(context),
                  height: height(context),
                  decoration: const BoxDecoration(
                    color: Color(0xfff8ffff),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(child: child),
                  )))
        ],
      ),
    );
  }
}

class AuthComp extends StatelessWidget {
  const AuthComp({
    super.key,
    required this.btnName,
    this.txt,
    this.child,
  });
  final String? btnName, txt;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(txt ?? '', style: const TextStyle(color: Colors.black)),
          CupertinoButton(
              child: Text(btnName!,
                  style: const TextStyle(color: Colors.blue, fontSize: 16)),
              onPressed: () => navigationPush(context, child!))

          // Btn("btnName",
          //     onPressed: () => navigationPush(context, child!),
          //     child: Text(btnName ?? '',
          //         style: const TextStyle(color: Colors.blue))),
        ],
      ),
    );
  }
}
