import 'package:cook_book/Domain/model/recipe.dart';
import 'package:cook_book/Ui/components/recipe_card_horizontal.dart';
import 'package:flutter/material.dart';

class TopRecipes extends StatelessWidget {
  const TopRecipes({
    super.key,
    required this.cards,
  });

  final List<Recipe> cards;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Top Recipes"),
        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 168,
          child: ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(
                    width: 30,
                  ),
              scrollDirection: Axis.horizontal,
              itemCount: cards.length,
              clipBehavior: Clip.none,
              itemBuilder: (context, i) {
                var item = cards[i];
                return AspectRatio(
                  aspectRatio: 256 / 167,
                  child: RecipeCardHorizontal(item),
                );
              }),
        ),
      ],
    );
  }
}
