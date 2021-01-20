import 'dart:convert';

import 'package:coopertransc/models/notice.dart';
import 'package:flutter/material.dart';

class NoticesScreen extends StatefulWidget {
  @override
  _NoticesScreenState createState() => _NoticesScreenState();
}

class _NoticesScreenState extends State<NoticesScreen> {
  List<Widget> notices = [];
  @override
  void initState() {
    loadTeste();
    super.initState();
  }

  Future loadTeste() async {
    List<Widget> tempNotices = [];

    var jsonFromTest =
        await DefaultAssetBundle.of(context).loadString("files/teste.json");

    var list = Notices.fromJson(json.decode(jsonFromTest)).notices;

    for (var item in list) {
      tempNotices.add(noticeItem(item));
    }

    setState(() {
      notices = tempNotices;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: notices,
        ),
      ),
    );
  }
}
