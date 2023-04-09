class SummaryItemModel {
  String player;
  String time;
  String goaltype;
  String img;
  bool right;
  SummaryItemModel({
    required this.player,
    required this.time,
    required this.goaltype,
    required this.img,
    this.right = true
  });
}
