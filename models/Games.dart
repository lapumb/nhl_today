import 'GameStatus.dart';
import 'Teams.dart';
import 'Linescore.dart'; 
import 'Team.dart';

class Games {
  int gamePk;
  String link;
  String gameType;
  String season;
  String gameDate;
  GameStatus status;
  Teams teams;
  Linescore linescore;
  Team venue;

  Games(
      {this.gamePk,
      this.link,
      this.gameType,
      this.season,
      this.gameDate,
      this.status,
      this.teams,
      this.linescore,
      this.venue});

  Games.fromJson(Map<String, dynamic> json) {
    gamePk = json['gamePk'];
    link = json['link'];
    gameType = json['gameType'];
    season = json['season'];
    gameDate = json['gameDate'];
    status =
        json['status'] != null ? new GameStatus.fromJson(json['status']) : null;
    teams = json['teams'] != null ? new Teams.fromJson(json['teams']) : null;
    linescore = json['linescore'] != null
        ? new Linescore.fromJson(json['linescore'])
        : null;
    venue = json['venue'] != null ? new Team.fromJson(json['venue']) : null;
  }
}
