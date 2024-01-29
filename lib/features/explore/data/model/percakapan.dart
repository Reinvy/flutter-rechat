class ExploreModel {
  String icon;
  String text;

  ExploreModel({required this.icon, required this.text});
}

List<ExploreModel> exploreModelList = [
  ExploreModel(icon: 'assets/bot.png', text: 'Explain Me How This AI Works'),
  ExploreModel(icon: 'assets/bot.png', text: 'Summarize Following Text'),
  ExploreModel(icon: 'assets/bot.png', text: 'Solve this Equation'),
  ExploreModel(icon: 'assets/bot.png', text: 'Generate Song Lyrics'),
  ExploreModel(icon: 'assets/bot.png', text: 'Write Motivational Quotes'),
  ExploreModel(icon: 'assets/bot.png', text: 'Give Travel Recommendation')
];
