class GameStatus {
  String abstractGameState;
  String codedGameState;
  String detailedState;
  String statusCode;
  bool startTimeTBD;

  GameStatus(
      {this.abstractGameState,
      this.codedGameState,
      this.detailedState,
      this.statusCode,
      this.startTimeTBD});

  GameStatus.fromJson(Map<String, dynamic> json) {
    abstractGameState = json['abstractGameState'];
    codedGameState = json['codedGameState'];
    detailedState = json['detailedState'];
    statusCode = json['statusCode'];
    startTimeTBD = json['startTimeTBD'];
  }
}