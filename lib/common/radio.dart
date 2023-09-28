import 'package:flutter/material.dart';

class RadioList extends StatelessWidget {
  final List<dynamic> itemList;
  final double? height;
  final dynamic groupValue;
  Function(dynamic)? onChanged;

  RadioList(
      {super.key,
      required this.itemList,
      this.height,
      this.groupValue,
      this.onChanged});

  Widget myWidget() {
    List<Widget> children = [
      for (int i = 0; i < itemList.length; i++)
        RadioBtn(
          value: itemList[i],
          title: itemList[i],
          groupValue: groupValue,
          onChanged: onChanged,
        )
    ];

    return height != null
        ? Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children)
        : Container(
            alignment: Alignment.topLeft,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children),
          );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // alignment: Alignment.topLeft,
      height: height,
      child: myWidget(),
    );
  }
}

class RadioBtn extends StatelessWidget {
  final dynamic value, groupValue, title;
  final Function(dynamic)? onChanged;
  const RadioBtn(
      {super.key, this.groupValue, this.value, this.title, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        // alignment: WrapAlignment.start,
        spacing: -7,
        children: [
          Transform.scale(
              alignment: Alignment.centerLeft,
              // scale: 1,
              scale: 1,
              child: Radio(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  value: value,
                  groupValue: groupValue,
                  onChanged: onChanged)),
          Text(
            title.toString(),
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.w600),
            textDirection: TextDirection.ltr,
            textAlign: TextAlign.start,
          ),
        ]);
  }
}
