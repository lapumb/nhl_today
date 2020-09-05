import 'TeamPeriodInfo.dart';

class PeriodInfo {
  String periodType;
  String startTime;
  String endTime;
  int num;
  String ordinalNum;
  TeamPeriodInfo home;
  TeamPeriodInfo away;

  PeriodInfo(
      {this.periodType,
      this.startTime,
      this.endTime,
      this.num,
      this.ordinalNum,
      this.home,
      this.away});

  PeriodInfo.fromJson(Map<String, dynamic> json) {
    periodType = json['periodType'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    num = json['num'];
    ordinalNum = json['ordinalNum'];
    home = json['home'] != null ? new TeamPeriodInfo.fromJson(json['home']) : null;
    away = json['away'] != null ? new TeamPeriodInfo.fromJson(json['away']) : null;
  }
}