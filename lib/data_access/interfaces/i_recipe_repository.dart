import 'package:cook_book/domain/model/recipe.dart';

abstract class IRecipeRepository {
  List<Recipe> getAll();
}
