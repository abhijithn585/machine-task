class DataMOdel {
  String? title;

  DataMOdel({this.title});

  DataMOdel.fromjson(Map<String, dynamic> json) {
    title = json['role_type'];
  }
}
