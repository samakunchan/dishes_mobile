part of 'category_bloc.dart';

class CategoryState extends Equatable {
  const CategoryState({this.status = FormStatus.init});

  final FormStatus status;

  CategoryState copyWith({FormStatus? status}) {
    return CategoryState(status: status ?? this.status);
  }

  @override
  List<Object> get props => [status];
}
