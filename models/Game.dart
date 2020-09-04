import 'package:nhl_today/Utilities.dart';

final String tag = 'Game';

class Game {
  // pre-game, in progress, complete, etc.
  String gameState;

  // awawy team
  String awayTeamName;
  int awayTeamScore;

  // home team
  String homeTeamName;
  int homeTeamScore;

  // game status
  String currentPeriod;
  String periodTimeRemaining;

  // arena
  String venueName;

  Game(
      this.gameState,
      this.awayTeamName,
      this.awayTeamScore,
      this.homeTeamName,
      this.homeTeamScore,
      this.currentPeriod,
      this.periodTimeRemaining,
      this.venueName);

  factory Game.DefaultGame() {
    return Game('null', 'null', -1, 'null', -1, 'null', 'null', 'null');
  }

  factory Game.fromJson(dynamic json) {
    if (json == null) {
      Utilities.LOG(tag, 'json is null');
      return Game.DefaultGame();
    }

    // json is not null, so start parsing
    // game state
    var statusObject = json['status'];
    String gameState = statusObject['detailedState'] as String;

    var teamsObject = json['teams'];

    // away team
    var awayTeamObject = teamsObject['away'];
    var awayTeamDetails = awayTeamObject['team'];
    Utilities.LOG(tag, '0');
    String awayTeamName = awayTeamDetails['name'] as String;
    Utilities.LOG(tag, '1');
    int awayTeamScore = awayTeamObject['score'] as int;
    Utilities.LOG(tag, '2');

    // home team
    var homeTeamObject = teamsObject['home'];
    var homeTeamDetails = homeTeamObject['team'];
    Utilities.LOG(tag, '3');
    String homeTeamName = homeTeamDetails['name'] as String;
    Utilities.LOG(tag, '4');
    int homeTeamScore = homeTeamObject['score'] as int;

    // game status
    var gameInfoObject = json['linescore'];
    Utilities.LOG(tag, '5');
    String currentPeriod = gameInfoObject['currentPeriodOrdinal'] as String;
    Utilities.LOG(tag, '6');
    String periodTimeRemaining =
        gameInfoObject['currentPeriodTimeRemaining'] as String;

    // venue
    var venueObject = json['venue'];
    Utilities.LOG(tag, '7');
    String venueName = venueObject['name'];

    return Game(gameState, awayTeamName, awayTeamScore, homeTeamName,
        homeTeamScore, currentPeriod, periodTimeRemaining, venueName);
  }

  @override
  String toString() {
    return '\n\n$awayTeamName, $awayTeamScore, $currentPeriod, $gameState, $homeTeamName, $homeTeamScore, $periodTimeRemaining, $venueName';
  }
}
