import 'package:cook_book/data_access/repos/recipe_repository.dart';
import 'package:cook_book/ui/components/all_recipes.dart';
import 'package:cook_book/ui/components/top_recipes.dart';
import 'package:cook_book/ui/home/bloc/home_bloc.dart';
import 'package:cook_book/ui/home/components/filter.dart';
import 'package:cook_book/ui/home/components/main_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    var loc = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (context) => HomeBloc(RepositoryProvider.of<RecipeRepository>(context))..add(LoadHomeEvent()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          if (state is HomeInitial) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          if (state is HomeError) {
            return Center(
              child: Text("Error!!"),
            );
          }

          if (state is HomeLoaded) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      collapsedHeight: 70,
                      flexibleSpace: MainAppBar(loc: loc, theme: theme),
                    ),
                    SliverAppBar(
                      pinned: true,
                      collapsedHeight: 102,
                      flexibleSpace: Filter(),
                    ),
                    SliverList(
                      delegate: SliverChildListDelegate(
                        [
                          SizedBox(
                            height: 25,
                          ),
                          TopRecipes(cards: state.recipes),
                          SizedBox(
                            height: 25,
                          ),
                          Text("Все рецепты"),
                          SizedBox(
                            height: 25,
                          ),
                        ],
                      ),
                    ),
                    AllRecipes(cards: state.recipes),
                  ],
                ),
              ),
            );
          }

          return Container();
        },
      ),
    );
  }
}
