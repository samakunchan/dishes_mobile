part of 'search_bloc.dart';

class SearchState extends Equatable {
  const SearchState({this.status = FormStatus.init});

  final FormStatus status;

  SearchState copyWith({FormStatus? status}) {
    return SearchState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
