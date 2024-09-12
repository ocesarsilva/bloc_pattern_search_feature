import 'package:bloc_pattern_search_feature/search_event.dart';
import 'package:bloc_pattern_search_feature/search_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(LoadedWords(words: words)) {
    on<SearchWord>((event, emit) {
      List<String> searchedTitles = [];
      for (var element in words) {
        if (element.contains(event.word)) {
          searchedTitles.add(element);
        }
      }

      emit(
        LoadedWords(words: searchedTitles),
      );
    });
  }

  static List<String> words = [
    'Apple',
    'Banana',
    'Cherry',
    'Date',
    'Elderberry',
    'Fig',
  ];
}
