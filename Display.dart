import 'package:nhl_today/Utilities.dart';

import 'package:nhl_today/models/GameDay.dart';
import 'package:nhl_today/models/Schedule.dart';
import 'package:nhl_today/models/Game.dart';
import 'package:nhl_today/models/TeamInfo.dart';

final String _tag = 'Display';

final String gameStatusScheduled = 'Scheduled';
final String gameStatusInProgress = 'In Progress';
final String gameStatusFinal = 'Final';

/// Helper function to print common statements used independent of game status
void _printCommon(Game game, String gameStatus) {
  TeamInfo homeTeam = game.teams.home;
  TeamInfo awayTeam = game.teams.away;
  String lineBreak = gameStatus.contains(gameStatusScheduled) ? '\n\n' : '\n';

  print(
      '${awayTeam.team.name} (${awayTeam.leagueRecord}) at ${homeTeam.team.name} (${homeTeam.leagueRecord})\n');
  print('\tStart Time: ${game.gameDate}$lineBreak');
}

/// Helper function to print an in progress [game]
void _printGameStatusInProgress(Game game) {
  TeamInfo homeTeam = game.teams.home;
  TeamInfo awayTeam = game.teams.away;

  print('\tPeriod: ${game.linescore.currentPeriod}\n');
  print('\t\t${awayTeam.score}\n');
  print('\t\t${homeTeam.score}\n');
}

/// Helper function to print a completed [game]
void _printGameStatusFinal(Game game) {
  String homeTeamName = game.teams.home.team.name;
  int homeTeamScore = game.teams.home.score;

  String awayTeamName = game.teams.away.team.name;
  int awayTeamScore = game.teams.away.score;

  print(
      '\tFinal: $awayTeamName $awayTeamScore, $homeTeamName $homeTeamScore\n\n');
}

/// Helper function to print specific game types
void _printGame(Game game) {
  String gameStatus = game.status.detailedState;

  _printCommon(game, gameStatus);

  if (gameStatus.contains(gameStatusInProgress)) {
    _printGameStatusInProgress(game);
  } else if (gameStatus.contains(gameStatusFinal)) {
    _printGameStatusFinal(game);
  } else {
    // TODO: find out the other status codes
    Utilities.LOG(_tag, 'Game status fell through, status = $gameStatus');
  }
}

/// Display the [day] including games, game scores, etc
void display(GameDay day) {
  if (null == day) {
    Utilities.LOG(_tag, 'GameDay object is null, returning');
    return;
  }

  print('\n\n${day.copyright}\n\n');

  Schedule todaysSchedule = day.dates[0];
  if (null == todaysSchedule) {
    Utilities.LOG(_tag, 'No dates were parsed, returning');
    return;
  }

  print('Todays Schedule (${todaysSchedule.date}):\n\n');

  // check if there are any games today
  if (todaysSchedule.games.length <= 0) {
    print('There are no games scheduled today.\n\n');
    return;
  }

  todaysSchedule.games.forEach((game) => _printGame(game));
}
