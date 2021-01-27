import 'package:flutter/material.dart';

class Notices {
  List<Notice> notices;

  Notices({this.notices});

  Notices.fromJson(Map<String, dynamic> json) {
    if (json['notices'] != null) {
      notices = [];
      json['notices'].forEach((v) {
        notices.add(new Notice.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.notices != null) {
      data['notices'] = this.notices.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Notice {
  String title;
  String notice;

  Notice({this.title, this.notice});

  Notice.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    notice = json['notice'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['notice'] = this.notice;
    return data;
  }
}

Widget noticeItem(item) {
  return Container(
    decoration: BoxDecoration(border: Border.all(color: Colors.black)),
    padding: EdgeInsets.fromLTRB(15, 5, 15, 50),
    child: Column(
      children: [
        Container(
          child: Text(
            item.title.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25,
              backgroundColor: Colors.yellow,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 5),
          child: Text(
            item.notice,
            textAlign: TextAlign.justify,
          ),
        )
      ],
    ),
  );
}
