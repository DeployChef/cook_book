import 'package:cook_book/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book/Ui/components/all_recipes.dart';
import 'package:cook_book/Ui/components/filter.dart';
import 'package:cook_book/Ui/components/main_app_bar.dart';
import 'package:cook_book/Ui/components/recipe_card_vertical.dart';
import 'package:cook_book/Ui/components/top_recipes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  final IRecipeService service;

  const HomePage({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var loc = AppLocalizations.of(context)!;

    var cards = service.getAll();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              collapsedHeight: 70,
              flexibleSpace: MainAppBar(loc: loc, theme: theme),
            ),
            SliverAppBar(
              pinned: true,
              collapsedHeight: 102,
              flexibleSpace: Filter(),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SizedBox(
                    height: 25,
                  ),
                  TopRecipes(cards: cards),
                  SizedBox(
                    height: 25,
                  ),
                  Text("Все рецепты"),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
            AllRecipes(cards: cards),
          ],
        ),
      ),
    );
  }
}
