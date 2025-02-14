import 'package:cook_book/DataAccess/interfaces/i_recipe_repository.dart';
import 'package:cook_book/DataAccess/repos/recipe_repository.dart';
import 'package:cook_book/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book/Domain/services/recipe_service.dart';
import 'package:cook_book/Ui/home.dart';
import 'package:cook_book/Ui/styles/app_themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    IRecipeRepository repo = RecipeRepository();
    IRecipeService service = RecipeService(repo);

    return MaterialApp(
      theme: AppThemes.light,
      darkTheme: AppThemes.dark,
      themeMode: ThemeMode.system,
      home: Home(
        service: service,
      ),
    );
  }
}
