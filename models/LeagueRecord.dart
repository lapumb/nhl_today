class LeagueRecord {
  int wins;
  int losses;
  int ot;
  String type;

  LeagueRecord({this.wins, this.losses, this.ot, this.type});

  LeagueRecord.fromJson(Map<String, dynamic> json) {
    wins = json['wins'];
    losses = json['losses'];
    ot = json['ot'];
    type = json['type'];
  }

  @override
  String toString() {
    return '$wins-$losses-$ot'; 
  }
}
