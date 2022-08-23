import 'package:bloc/bloc.dart';
import 'package:dishes_mobile/features/home/home.dart';
import 'package:equatable/equatable.dart';
import 'package:dishes_mobile/core/core.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
      {required HomeRepository homeRepository,})
      : _homeRepository = homeRepository,
        super(const HomeState()) {
      on<HomePageLoaded>((HomePageLoaded event, Emitter<HomeState> emit) {
        emit(state.copyWith(status: FormStatus.init));
      });
  }
  final HomeRepository _homeRepository;
}
