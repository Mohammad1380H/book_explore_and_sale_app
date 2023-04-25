class BookModel {
  String? bookName;
  String? imageUrl;
  String? author;
  double? star;
  BookModel.fromFake(
      {required this.bookName,
      required this.imageUrl,
      required this.author,
      required this.star});
}
