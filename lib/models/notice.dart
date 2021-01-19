class Notice {
  String title;
  String notice;

  Notice(this.title, this.notice);

  Notice.fromJSON(Map<String, dynamic> json)
      : title = json['title'],
        notice = json['notice'];

  Map<String, dynamic> toJson() => {
        'title': title,
        'notice': notice,
      };
}
