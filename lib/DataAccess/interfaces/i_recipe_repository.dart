import 'package:cook_book/Domain/model/recipe.dart';

abstract class IRecipeRepository {
  List<Recipe> getAll();
}
