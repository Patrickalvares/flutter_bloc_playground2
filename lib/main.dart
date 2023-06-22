import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_bloc_playground/bloc/book_bloc.dart';
import 'package:flutter_bloc_playground/home_page.dart';

void main() {
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider<BookBloc>(
        create: (context) => BookBloc(),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}
