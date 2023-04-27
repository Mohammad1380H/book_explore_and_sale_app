class BookModel {
  String? bookName;
  String? imageUrl;
  String? author;
  double? star;
  double? readingRate;
  BookModel.fromFake(
      {required this.bookName,
      required this.imageUrl,
      required this.author,
      required this.star,
      required this.readingRate});
}
