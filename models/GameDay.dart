import 'game.dart';
import 'package:nhl_today/Utilities.dart';

final String tag = 'GameDay';

class GameDay {
  String date;
  int totalGames;
  List<Game> games;

  GameDay(this.date, this.totalGames, [this.games]);

  factory GameDay.fromJson(dynamic rawJson) {
    var json = rawJson['dates'] as dynamic;
    if (json == null) {
      Utilities.LOG(tag, 'there are no games on today');
      return GameDay('null', 0, null);
    }

    Utilities.LOG(tag, "debug1");

    var gameJsonObjects = json['games'] as dynamic;
    gameJsonObjects = gameJsonObjects as List;
    List<Game> _games =
        gameJsonObjects.map((gameJson) => Game.fromJson(gameJson)).toList();

    Utilities.LOG(tag, "debug2");

    return GameDay(json['date'] as String, json['totalGames'] as int, _games);
  }

  @override
  String toString() {
    return '\n\n$date, $totalGames, $games';
  }
}
