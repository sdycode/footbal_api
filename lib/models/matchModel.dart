import 'package:football/models/teammodel.dart';

class MatchModel {
  TeamModel team1;
  TeamModel team2;
  String time;
  MatchModel({
    required this.team1,
    required this.team2,
    required this.time,
  });
}
