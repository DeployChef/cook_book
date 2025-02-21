import 'package:cook_book/Domain/interfaces/i_recipe_service.dart';
import 'package:cook_book/Ui/components/name_title.dart';
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

    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(right: 25.0, left: 25.0, top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const NameTitle("Chef"),
                    Text(
                      loc.titleQuestion,
                      style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
                Container(
                  height: 47,
                  width: 47,
                  color: theme.primaryColor,
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: cards.length,
            itemBuilder: (context, index) {
              var item = cards[index];

              return Row(
                children: [
                  Text(item.name),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(item.ccal.toString())
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
