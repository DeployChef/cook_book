import 'package:cook_book/DataAccess/interfaces/i_recipe_repository.dart';
import 'package:cook_book/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book/Domain/model/recipe.dart';

class RecipeService implements IRecipeService {
  IRecipeRepository repo;

  RecipeService(this.repo);

  List<Recipe> getAll() {
    var items = repo.getAll();

    return items.toList();
  }
}
