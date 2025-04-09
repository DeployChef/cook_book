import 'package:cook_book/Ui/styles/app_colors.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  TextEditingController controller = TextEditingController();

  Filter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Column(
      children: [
        SizedBox(
          height: 44,
          child: TextField(
            controller: controller,
            cursorColor: theme.primaryColor,
            style: theme.textTheme.bodyMedium,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              prefixIcon: Icon(
                Icons.search,
                color: theme.primaryColor,
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.clear,
                  color: theme.primaryColor,
                ),
                onPressed: () {
                  controller.clear();
                },
              ),
              hintStyle: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w200),
              hintText: "Search for quick recipes...",
            ),
          ),
        ),
        SizedBox(height: 15),
        Row(
          children: [
            FilterToggle("Breakfast"),
            SizedBox(width: 15),
            FilterToggle("Lunch"),
            SizedBox(width: 15),
            FilterToggle("Dinner"),
          ],
        )
      ],
    );
  }
}

class FilterToggle extends StatelessWidget {
  String text;

  FilterToggle(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.primaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10,
        ),
        child: Text(
          text,
          style: theme.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500, color: AppColors.selectedToggleLight),
        ),
      ),
    );
  }
}
