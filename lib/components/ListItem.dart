import 'package:flutter/material.dart';

Widget ListItem(context, title, ontap) {
  return ListTile(
    title: Text(title),
    onTap: () {
      ontap();
    },
  );
}
