import 'package:flutter/material.dart';
import 'package:flutter_bloc_playground/models/book_model.dart';

class BookView extends StatefulWidget {
  final Book book;
  const BookView({
    super.key,
    required this.book,
  });

  @override
  State<BookView> createState() => _BookViewState();
}

class _BookViewState extends State<BookView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20.0, right: 8, top: 8, bottom: 8),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(widget.book.title),
            Text(widget.book.author),
            Text(widget.book.releaseDate),
            Text(widget.book.publisher),
          ]),
        ),
      ),
    );
  }
}
