class ArticleModel {
  final String title;
  final String? subTitle;
  final String? image;
  final String? url;

  ArticleModel({
    this.url,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      url: json["url"],
      title: json["title"],
      subTitle: json["description"],
      image: json["urlToImage"],
    );
  }
}
