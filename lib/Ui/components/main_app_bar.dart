import 'package:cook_book/Ui/components/name_title.dart';
import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({
    super.key,
    required this.loc,
    required this.theme,
  });

  final AppLocalizations loc;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
