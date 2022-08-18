import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:dishes_mobile/core/core.dart';
import 'package:dishes_mobile/search/profile.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(
      {required SearchRepository searchRepository,})
      : _searchRepository = searchRepository,
        super(const SearchState()) {
    on<GmailRequestCalled>(
        (GmailRequestCalled event, Emitter<SearchState> emit) async {
      emit(state.copyWith(status: FormStatus.processing));
    });
  }
  final SearchRepository _searchRepository;
}
