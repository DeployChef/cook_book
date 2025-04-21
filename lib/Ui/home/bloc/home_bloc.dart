import 'package:bloc/bloc.dart';
import 'package:cook_book/data_access/interfaces/i_recipe_repository.dart';
import 'package:cook_book/domain/model/recipe.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  IRecipeRepository repo;

  HomeBloc(this.repo) : super(HomeInitial()) {
    on<LoadHomeEvent>((event, emit) async {
      try {
        await Future.delayed(Duration(seconds: 5));

        var recipes = repo.getAll();

        emit(HomeLoaded(recipes));
      } catch (e) {
        emit(HomeError(e.toString()));
      }
    });
  }
}
