class Recipe {
  final String name;
  final int cookingTimeMinutes;
  final int calories;
  final double rating;
  final List<Category> categories;
  final List<String> ingredients;
  final String? photoUrl;

  const Recipe({
    required this.name,
    required this.cookingTimeMinutes,
    required this.calories,
    this.rating = 0,
    required this.categories,
    required this.ingredients,
    this.photoUrl,
  });

  String get formattedCookingTime {
    if (cookingTimeMinutes < 60) return '$cookingTimeMinutes мин';
    final hours = cookingTimeMinutes ~/ 60;
    final minutes = cookingTimeMinutes % 60;
    return '${hours}ч ${minutes}мин';
  }

  // Краткая сводка
  String get summary => '''
$name
Категории: ${categories.map((c) => c.name).join(', ')}
Время готовки: $formattedCookingTime
Калории: $calories ккал
Рейтинг: ${rating.toStringAsFixed(1)}/5
''';
}

// Уровень сложности
enum Difficulty { easy, medium, hard }

// Категории блюд
enum Category {
  breakfast,
  lunch,
  dinner,
  snack,
  dessert,
}
