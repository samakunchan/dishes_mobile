part of 'search_bloc.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();

  @override
  List<Object> get props => [];
}

class GmailRequestCalled extends SearchEvent {
  const GmailRequestCalled();

  @override
  List<Object> get props => [];
}

class SearchToken extends SearchEvent {
  const SearchToken();

  @override
  List<Object> get props => [];
}
