// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_bloc_playground/models/book_model.dart';

abstract class BookBlocEvent {}

class AddBookBlocEvent extends BookBlocEvent {
  Book book;
  AddBookBlocEvent({
    required this.book,
  });
}

class RemoveBookBlocEvent extends BookBlocEvent {}

class EditBookBlocEvent extends BookBlocEvent {}
