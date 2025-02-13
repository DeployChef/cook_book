import 'package:cook_book/components/name_title.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(120),
        child: AppBar(
          flexibleSpace: Padding(
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
                      "What you want to cook today?",
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Montserrat',
              style: TextStyle(fontFamily: "Montserrat"),
            ),
            Text(
              'Roboto',
              style: TextStyle(fontFamily: "Roboto"),
            ),
            Text(
              'Regular',
              style: TextStyle(),
            ),
            ElevatedButton(onPressed: () {}, child: Text("data")),
          ],
        ),
      ),
    );
  }
}
