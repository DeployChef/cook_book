import 'package:cook_book/Ui/styles/app_colors.dart';
import 'package:cook_book/Ui/styles/app_typography.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData get light {
    var theme = ThemeData.light().copyWith(
      primaryColor: AppColors.primaryLight,
      textTheme: TextTheme(
        titleLarge: AppTypography.largeStyle.copyWith(color: AppColors.textLight),
        bodyMedium: AppTypography.mediumStyle.copyWith(color: AppColors.textLight),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          elevation: 10,
          selectedIconTheme: IconThemeData(color: AppColors.selectedLight),
          selectedLabelStyle: AppTypography.secondaryBaseStyle,
          unselectedItemColor: AppColors.unselectedLight,
          selectedItemColor: AppColors.unselectedLight),
    );

    return theme;
  }

  static ThemeData get dark {
    var theme = ThemeData.dark().copyWith(
      primaryColor: AppColors.primaryDark,
      textTheme: TextTheme(
        titleLarge: AppTypography.largeStyle.copyWith(color: AppColors.textDark),
        bodyMedium: AppTypography.mediumStyle.copyWith(color: AppColors.textDark),
      ),
    );
    return theme;
  }
}
