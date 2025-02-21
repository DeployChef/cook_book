import 'package:cook_book/DataAccess/interfaces/i_recipe_repository.dart';
import 'package:cook_book/DataAccess/repos/recipe_repository.dart';
import 'package:cook_book/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book/Domain/services/recipe_service.dart';
import 'package:cook_book/main_wrapper.dart';
import 'package:cook_book/Ui/styles/app_themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ru'),
      ],
      home: MainWrapper(service: service),
    );
  }
}
