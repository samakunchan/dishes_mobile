import 'package:bloc/bloc.dart';
import 'package:dishes_mobile/features/category/category.dart';
import 'package:equatable/equatable.dart';
import 'package:dishes_mobile/core/core.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc(
      {required CategoryRepository categoryRepository,})
      : _categoryRepository = categoryRepository,
        super(const CategoryState()) {

  }
  final CategoryRepository _categoryRepository;
}
