import 'Game.dart';

class Schedule {
  String date;
  int totalItems;
  int totalEvents;
  int totalGames;
  int totalMatches;
  List<Game> games;

  Schedule({
    this.date,
    this.totalItems,
    this.totalEvents,
    this.totalGames,
    this.totalMatches,
    this.games,
  });

  Schedule.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    totalItems = json['totalItems'];
    totalEvents = json['totalEvents'];
    totalGames = json['totalGames'];
    totalMatches = json['totalMatches'];
    if (json['games'] != null) {
      games = new List<Game>();
      json['games'].forEach((v) {
        games.add(new Game.fromJson(v));
      });
    }
  }
}
