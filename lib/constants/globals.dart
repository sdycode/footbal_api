import 'package:football/constants/colors.dart';
import 'package:football/constants/images.dart';
import 'package:football/models/matchModel.dart';
import 'package:football/models/summaryItemModel.dart';
import 'package:football/models/teammodel.dart';

List<String> teamNames = [
  "Chelsea",
  "Man Utd",
  "Liverpool",
  "Leichester",
  "Man City",
  "Wolves",
  "Brighton",
  "N Forest",
  "",
  "",
  "",
];
List<TeamModel> teams = [
  ...List.generate(
      Images.teamsImages.length,
      (i) => TeamModel(
          teamname: teamNames[i % teamNames.length],
          img: Images.teamsImages[i]))
  // TeamModel(teamname: "", img: "")
  //   "assets/teams/Badges 01.png",
  // "assets/teams/image 9.png",
  // "assets/teams/Badges 07.png",
  // "assets/teams/Badges 17.png",
  // "assets/teams/Badges 18.png",
  // "assets/teams/Badges 19.png",
  // "assets/teams/Badges 20.png",
  // "assets/teams/image 27.png"
];
List<List<TeamModel>> listOfMatches = [
  [teams[0], teams[1]],
  [teams[2], teams[3]],
  [teams[4], teams[5]]
];
List<MatchModel> todayMatches = [
  MatchModel(team1: teams[2], team2: teams[3], time: "06:30"),
  MatchModel(team1: teams[4], team2: teams[5], time: "07:30"),
  MatchModel(team1: teams[6], team2: teams[7], time: "08:30"),
];
List<String> summaryOptions = ["Stats", "Summary", "Lineups", "H2H", "Other"];
const goal = "Goal";
const yellowcard = "Yellow Card";

const ballimg = "assets/ball.png";
const ylowcardimg = "assets/yellowcard.png";

List<SummaryItemModel> summaryItemModelList = [
  SummaryItemModel(
      player: "Lisandro Martinez",
      time: "90’+5’",
      goaltype: yellowcard,
      img: ylowcardimg),
  SummaryItemModel(
      player: "Casemiro", time: "90’+4’", goaltype: goal, img: ballimg),
  SummaryItemModel(
      right: false,
      player: "Jorginho",
      time: "90’+2’",
      goaltype: yellowcard,
      img: ballimg),
  SummaryItemModel(
      player: "L. Shaw", time: "90’", goaltype: yellowcard, img: ylowcardimg),
  SummaryItemModel(
      right: false,
      player: "Jorginho",
      time: "87’",
      goaltype: yellowcard,
      img: ballimg),
  SummaryItemModel(
      player: "Freed", time: "86’", goaltype: yellowcard, img: ylowcardimg),
];
