import 'Schedule.dart';

class GameDay {
  String copyright;
  int totalItems;
  int totalEvents;
  int totalGames;
  int totalMatches;
  int wait;
  List<Schedule> dates;

  GameDay(
      {this.copyright,
      this.totalItems,
      this.totalEvents,
      this.totalGames,
      this.totalMatches,
      this.wait,
      this.dates});

  GameDay.fromJson(Map<String, dynamic> json) {
    copyright = json['copyright'];
    totalItems = json['totalItems'];
    totalEvents = json['totalEvents'];
    totalGames = json['totalGames'];
    totalMatches = json['totalMatches'];
    wait = json['wait'];
    if (json['dates'] != null) {
      dates = new List<Schedule>();
      json['dates'].forEach((v) {
        dates.add(new Schedule.fromJson(v));
      });
    }
  }
}
