import 'package:coopertransc/components/ListItem.dart';
import 'package:coopertransc/screens/Notices.dart';
import 'package:coopertransc/screens/Turn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var bodyWidget;
  var titleBar;

  @override
  void initState() {
    super.initState();
    bodyWidget = notices(context);
    titleBar = "Avisos";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: bodyWidget,
        appBar: AppBar(
          title: Text(titleBar),
        ),
        drawer: Drawer(
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
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColor),
              ),
              ListItem(context, "Avisos", () {
                setState(() {
                  bodyWidget = notices(context);
                  titleBar = "Avisos";
                });
              }),
              ListItem(context, "Vez", () {
                setState(() {
                  bodyWidget = Turn(context);
                  titleBar = "Vez";
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}
