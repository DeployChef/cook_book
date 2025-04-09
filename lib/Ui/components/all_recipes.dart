import 'package:cook_book/Domain/model/recipe.dart';
import 'package:cook_book/Ui/components/recipe_card_vertical.dart';
import 'package:flutter/material.dart';

class AllRecipes extends StatelessWidget {
  const AllRecipes({
    super.key,
    required this.cards,
  });

  final List<Recipe> cards;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var item = cards[index];
          return RecipeCardVertical(item);
        },
        childCount: cards.length,
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15.0,
        crossAxisSpacing: 14.0,
        childAspectRatio: 168 / 206,
      ),
    );
  }
}
