part of 'home_bloc.dart';

class HomeState extends Equatable {
  const HomeState({this.status = FormStatus.init});

  final FormStatus status;

  HomeState copyWith({FormStatus? status}) {
    return HomeState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
