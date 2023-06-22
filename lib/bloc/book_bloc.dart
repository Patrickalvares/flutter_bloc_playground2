import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_playground/bloc/book_bloc_events.dart';
import 'package:flutter_bloc_playground/bloc/book_bloc_state.dart';
import 'package:flutter_bloc_playground/models/book_model.dart';

class BookBloc extends Bloc<BookBlocEvent, BookBlocState> {
  List<Book> books = [];
  BookBloc() : super(UnloadedBookBlocState()) {
    on<AddBookBlocEvent>(
      (event, emit) async {
        emit(LoadingBookBlocState());
        await Future.delayed(const Duration(seconds: 5));
        books.add(event.book);
        emit(LoadedBookBlocState(
          books: books,
        ));
      },
    );
  }
}
