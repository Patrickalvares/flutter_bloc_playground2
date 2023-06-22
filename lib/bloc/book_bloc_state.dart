// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc_playground/models/book_model.dart';

abstract class BookBlocState {}

class UnloadedBookBlocState extends BookBlocState {}

class LoadingBookBlocState extends BookBlocState {}

class LoadedBookBlocState extends BookBlocState {
  List<Book> books;
  LoadedBookBlocState({
    required this.books,
  });
}
