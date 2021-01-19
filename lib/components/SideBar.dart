import 'package:coopertransc/components/ListItem.dart';
import 'package:coopertransc/screens/Notices.dart';
import 'package:coopertransc/screens/Turn.dart';
import 'package:flutter/material.dart';

Widget SideBar(context, ref) {
  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(
          child: Column(children: [
            Text(
              "CooperTransc",
              style: TextStyle(color: Colors.white),
            ),
            Text(
              "Seja bem vindo {NOME_TESTE}",
              style: TextStyle(color: Colors.white),
            )
          ]),
          decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        ),
        ListItem(context, "Noticias", () {
          ref = Notices(context);
        }),
        ListItem(context, "Vez", () {
          ref = Turn(context);
        }),
      ],
    ),
  );
}
