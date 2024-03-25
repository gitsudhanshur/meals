import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals/models/meal.dart';

class favoriteMealsNotifier extends StateNotifier<List<Meal>> {
  favoriteMealsNotifier() : super([]);

  void _toggleMealFavoriteStatus(Meal meal) {
    final mealIsFavorite = state.contains(meal);

    if(mealIsFavorite) {
      state = state.where((m) => m.id != meal.id).toList();
    }else{
      state = [...state, meal];
    }
  }
}

final favoriteMealsProvider = 
  StateNotifierProvider<favoriteMealsNotifier, List<Meal>>( (ref) {
  return favoriteMealsNotifier();
});