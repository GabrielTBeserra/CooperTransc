import 'package:coopertransc/components/ListItem.dart';
import 'package:coopertransc/screens/Notices.dart';
import 'package:coopertransc/screens/Turn.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var bodyWidget;

  @override
  void initState() {
    super.initState();
    bodyWidget = Notices(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: bodyWidget,
        appBar: AppBar(
          title: Text("Avisos"),
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
              ListItem(context, "teste", () {
                setState(() {
                  bodyWidget = Notices(context);
                });
              }),
              ListItem(context, "Vez", () {
                setState(() {
                  bodyWidget = Turn(context);
                });
              })
            ],
          ),
        ),
      ),
    );
  }
}
