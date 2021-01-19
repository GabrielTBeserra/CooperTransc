import 'package:coopertransc/util/routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "CooperTransc",
      initialRoute: "/auth",
      routes: getRoutes(),
      theme: ThemeData(
          primaryColor: Color.fromRGBO(31, 31, 31, 1),
          backgroundColor: Color.fromRGBO(233, 241, 247, 1),
          buttonColor: Color.fromRGBO(68, 48, 199, 1)),
    );
  }
}
