import 'PeriodInfo.dart';
import 'Teams.dart';
import 'IntermissionInfo.dart';

class Linescore {
  int currentPeriod;
  String currentPeriodOrdinal;
  String currentPeriodTimeRemaining;
  List<PeriodInfo> periods;
  Teams shootoutInfo;
  Teams teams;
  String powerPlayStrength;
  bool hasShootout;
  IntermissionInfo intermissionInfo;

  Linescore(
      {this.currentPeriod,
      this.currentPeriodOrdinal,
      this.currentPeriodTimeRemaining,
      this.periods,
      this.shootoutInfo,
      this.teams,
      this.powerPlayStrength,
      this.hasShootout,
      this.intermissionInfo});

  Linescore.fromJson(Map<String, dynamic> json) {
    currentPeriod = json['currentPeriod'];
    currentPeriodOrdinal = json['currentPeriodOrdinal'];
    currentPeriodTimeRemaining = json['currentPeriodTimeRemaining'];
    if (json['periods'] != null) {
      periods = new List<PeriodInfo>();
      json['periods'].forEach((v) {
        periods.add(new PeriodInfo.fromJson(v));
      });
    }
    shootoutInfo = json['shootoutInfo'] != null
        ? new Teams.fromJson(json['shootoutInfo'])
        : null;
    teams = json['teams'] != null ? new Teams.fromJson(json['teams']) : null;
    powerPlayStrength = json['powerPlayStrength'];
    hasShootout = json['hasShootout'];
    intermissionInfo = json['intermissionInfo'] != null
        ? new IntermissionInfo.fromJson(json['intermissionInfo'])
        : null;
  }
}