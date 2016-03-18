var recipeApp = angular.module('recipeApp', ['ngRoute', 'templates', 'Devise']);

recipeApp.config(function($routeProvider) {
  $routeProvider
    .when('/recipes', {
      templateUrl: 'all_recipes.html',
      controller: 'RecipesController'
    })
    .when('/recipes/new', {
      templateUrl: 'new_recipe.html',
      controller: 'NewRecipeController'
    })
    .when('/recipes/:id', {
      templateUrl: 'show_recipe.html',
      controller: 'ShowRecipeController'
    })
    .otherwise({redirectTo: '/recipes'});
});
