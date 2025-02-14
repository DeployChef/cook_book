import 'package:flutter/material.dart';

class NameTitle extends StatelessWidget {
  const NameTitle(this.name, {super.key});

  final String name;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return RichText(
      text: TextSpan(
        text: "Hello, ",
        children: [
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
