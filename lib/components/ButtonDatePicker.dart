import 'package:flutter/material.dart';

Widget buttonDatePicker(rotulo, BuildContext context, {action}) {
  return Container(
      padding: EdgeInsets.only(top: 10),
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        elevation: 0,
        padding: EdgeInsets.only(top: 5),
        child: Text(rotulo,
            style: TextStyle(fontWeight: FontWeight.w300, color: Colors.black)),
        color: Theme.of(context).backgroundColor,
        onPressed: () {
          if (action != null) {
            action();
          }
        },
      ));
}
