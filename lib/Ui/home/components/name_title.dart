import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NameTitle extends StatelessWidget {
  const NameTitle(this.name, {super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var loc = AppLocalizations.of(context)!;

    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: loc.titleHello,
          ),
          TextSpan(
            text: ", ",
          ),
          TextSpan(
              text: name,
              style: TextStyle(
                color: theme.primaryColor,
              )),
          const TextSpan(text: " 🖐"),
        ],
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
