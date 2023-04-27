import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:book_explore_and_sale_app/model/book_model.dart';

List<BookModel> fakeBookList = [
  BookModel.fromFake(
      bookName: "bookName",
      imageUrl: Assets.image.rectangle2.path,
      author: 'xxxxx',
      star: 0.9),
  BookModel.fromFake(
      bookName: "Julis Aalvarez",
      imageUrl: Assets.image.rectangle4.path,
      author: 'author',
      star: 0.4),
  BookModel.fromFake(
      bookName: "At Home with Mohammed Ali ",
      imageUrl: Assets.image.rectangle2.path,
      author: 'author',
      star: 0.3),
  BookModel.fromFake(
      bookName: "bookName",
      imageUrl: Assets.image.rectangle4.path,
      author: 'author',
      star: 0.4),
  BookModel.fromFake(
      bookName: "bookName",
      imageUrl: Assets.image.rectangle2.path,
      author: 'author',
      star: 0.3),
  BookModel.fromFake(
      bookName: "bookName",
      imageUrl: Assets.image.rectangle4.path,
      author: 'author',
      star: 0.4),
];

List<String> fakeCategoryNames = [
  "Arts",
  "Biography",
  "Romance",
  "Thriller",
  "Fiction",
  "Crime",
  "Movies",
  "Religious",
  "Philsophy",
  "History",
];
