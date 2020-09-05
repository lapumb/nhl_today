class TeamPeriodInfo {
  int goals;
  int shotsOnGoal;
  String rinkSide;

  TeamPeriodInfo({this.goals, this.shotsOnGoal, this.rinkSide});

  TeamPeriodInfo.fromJson(Map<String, dynamic> json) {
    goals = json['goals'];
    shotsOnGoal = json['shotsOnGoal'];
    rinkSide = json['rinkSide'];
  }
}