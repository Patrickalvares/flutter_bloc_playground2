import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_playground/bloc/book_bloc.dart';
import 'package:flutter_bloc_playground/bloc/book_bloc_state.dart';
import 'package:flutter_bloc_playground/models/book_view_model.dart';
import 'package:flutter_bloc_playground/new_book.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Livros'),
            IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const NewBook()));
                },
                icon: const Icon(Icons.book_rounded))
          ],
        ),
        backgroundColor: Colors.black,
      ),
      body: BlocBuilder(
        bloc: BlocProvider.of<BookBloc>(context),
        builder: (context, state) {
          if (state is LoadedBookBlocState) {
            return ListView.builder(
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BookView(book: state.books[index]);
              },
            );
          } else if (state is LoadingBookBlocState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Center(
              child: IconButton(
                icon: const Icon(Icons.replay_outlined),
                onPressed: () {
                  setState(() {});
                },
              ),
            );
          }
        },
      ),
    );
  }
}
