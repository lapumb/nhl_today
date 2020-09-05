class Team {
  int id;
  String name;
  String link;

  Team({this.id, this.name, this.link});

  Team.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    link = json['link'];
  }
}