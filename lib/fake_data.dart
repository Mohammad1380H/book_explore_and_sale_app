import 'package:book_explore_and_sale_app/gen/assets.gen.dart';
import 'package:book_explore_and_sale_app/model/book_model.dart';
import 'package:flutter/material.dart';

List<BookModel> fakeBookList = [
  BookModel.fromFake(
      bookName: "Name of Book",
      imageUrl: Assets.image.rectangle2.path,
      author: '',
      star: 0.9,
      readingRate: 0.6),
  BookModel.fromFake(
      bookName: "Name of Book",
      imageUrl: Assets.image.rectangle4.path,
      author: '',
      star: 0.4,
      readingRate: 0.5),
];

List<BookModel> fakeTopBookList = [
  BookModel.fromFake(
      bookName: "Good Company",
      imageUrl: Assets.image.goodCmp.path,
      author: 'Cynthia D.S',
      star: 0.9,
      readingRate: 0.6),
  BookModel.fromFake(
      bookName: "Book Lovers",
      imageUrl: Assets.image.bookLv.path,
      author: 'Emily Henry',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "Leaving Time",
      imageUrl: Assets.image.group2908.path,
      author: 'Jodi Picoult',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "Silent Scream ",
      imageUrl: Assets.image.silentSc.path,
      author: 'Angela Marsons',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "The Kite Runner ",
      imageUrl: Assets.image.kiteR.path,
      author: 'Khaled Hosseini',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "Silent Scream ",
      imageUrl: Assets.image.silentSc.path,
      author: 'Angela Marsons',
      star: 0.4,
      readingRate: 0.5),
];

List<BookModel> fakeCategoryBookList = [
  BookModel.fromFake(
      bookName: "Good Company",
      imageUrl: Assets.image.goodCmp.path,
      author: 'Cynthia D.S',
      star: 0.9,
      readingRate: 0.6),
  BookModel.fromFake(
      bookName: "Book Lovers",
      imageUrl: Assets.image.bookLv.path,
      author: 'Emily Henry',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "Leaving Time",
      imageUrl: Assets.image.group2908.path,
      author: 'Jodi Picoult',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "Silent Scream ",
      imageUrl: Assets.image.silentSc.path,
      author: 'Angela Marsons',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "Leaving Time",
      imageUrl: Assets.image.group2908.path,
      author: 'Jodi Picoult',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "The Kite Runner ",
      imageUrl: Assets.image.kiteR.path,
      author: 'Khaled Hosseini',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "Leaving Time",
      imageUrl: Assets.image.group2908.path,
      author: 'Jodi Picoult',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "Silent Scream ",
      imageUrl: Assets.image.silentSc.path,
      author: 'Angela Marsons',
      star: 0.4,
      readingRate: 0.5),
  BookModel.fromFake(
      bookName: "Leaving Time",
      imageUrl: Assets.image.group2908.path,
      author: 'Jodi Picoult',
      star: 0.4,
      readingRate: 0.5),
];

const List<Tab> fakeCategoryNames = [
  Tab(text: "Arts"),
  Tab(text: "Biography"),
  Tab(text: "Romance"),
  Tab(text: "Thriller"),
  Tab(text: "Fiction"),
  Tab(text: "Crime"),
  Tab(text: "Movies"),
  Tab(text: "Religious"),
  Tab(text: "Philsophy"),
  Tab(text: "History"),
];
