import 'TeamInfo.dart';

class Teams {
  TeamInfo away;
  TeamInfo home;

  Teams({this.away, this.home});

  Teams.fromJson(Map<String, dynamic> json) {
    away = json['away'] != null ? new TeamInfo.fromJson(json['away']) : null;
    home = json['home'] != null ? new TeamInfo.fromJson(json['home']) : null;
  }
}