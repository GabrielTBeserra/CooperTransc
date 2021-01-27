import 'package:coopertransc/components/ListItem.dart';
import 'package:coopertransc/screens/notices_screen.dart';
import 'package:coopertransc/screens/Turn.dart';
import 'package:coopertransc/screens/travels.dart';
import 'package:flutter/material.dart';

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
    //bodyWidget = NoticesScreen();
    bodyWidget = TravelsScreen();
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
                  bodyWidget = NoticesScreen();
                  titleBar = "Avisos";
                });
                Navigator.pop(context);
              }),
              ListItem(context, "Vez", () async {
                setState(() {
                  bodyWidget = Turn(context);
                  titleBar = "Vez";
                });
                Navigator.pop(context);
              }),
              ListItem(context, "Viagens", () async {
                setState(() {
                  bodyWidget = TravelsScreen();
                  titleBar = "Viagens";
                });
                Navigator.pop(context);
              }),
              ListItem(context, "Minhas Viagens", () async {}),
              ListItem(context, "Rastreamento", () async {}),
              ListItem(context, "Senha", () async {}),
              ListItem(context, "Sair", () async {}),
            ],
          ),
        ),
      ),
    );
  }
}
