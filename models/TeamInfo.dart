import 'LeagueRecord.dart';
import 'Team.dart';

class TeamInfo {
  LeagueRecord leagueRecord;
  int score;
  Team team;

  TeamInfo({this.leagueRecord, this.score, this.team});

  TeamInfo.fromJson(Map<String, dynamic> json) {
    leagueRecord = json['leagueRecord'] != null
        ? new LeagueRecord.fromJson(json['leagueRecord'])
        : null;
    score = json['score'];
    team = json['team'] != null ? new Team.fromJson(json['team']) : null;
  }
}