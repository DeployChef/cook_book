part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoaded extends HomeState {
  List<Recipe> recipes;

  HomeLoaded(this.recipes);
}

final class HomeError extends HomeState {
  String error;

  HomeError(this.error);
}
