import 'package:cook_book/Domain/model/recipe.dart';

abstract class IRecipeService {
  List<Recipe> getAll();
}
