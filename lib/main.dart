import 'package:bloc_pattern_search_feature/search_bloc.dart';
import 'package:bloc_pattern_search_feature/search_word_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => SearchBloc(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SearchWordPage(),
        ));
  }
}
