import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_playground/bloc/book_bloc.dart';
import 'package:flutter_bloc_playground/bloc/book_bloc_events.dart';
import 'package:flutter_bloc_playground/models/book_model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _releaseDateController = TextEditingController();
  final TextEditingController _authorController = TextEditingController();
  final TextEditingController _publisherController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Adicionar livro'), backgroundColor: Colors.black),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 50,
                child: TextFormField(
                  controller: _nameController,
                  decoration:
                      const InputDecoration(label: Text('Nome do livro')),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 50,
                child: TextFormField(
                  controller: _authorController,
                  decoration:
                      const InputDecoration(label: Text('Nome do Autor')),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 50,
                child: TextFormField(
                  controller: _releaseDateController,
                  decoration:
                      const InputDecoration(label: Text('Data de Lançamento')),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
                height: 50,
                child: TextFormField(
                  controller: _publisherController,
                  decoration: const InputDecoration(label: Text('Editora')),
                )),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Book newBook = Book(
                  title: _nameController.text,
                  releaseDate: _releaseDateController.text,
                  author: _authorController.text,
                  publisher: _publisherController.text,
                );
                BlocProvider.of<BookBloc>(context)
                    .add(AddBookBlocEvent(book: newBook));
                Navigator.pop(context);
              },
              child: Container(
                height: 60,
                width: double.infinity,
                color: Colors.black,
                child: const Center(
                  child: Text(
                    'Adicionar',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
