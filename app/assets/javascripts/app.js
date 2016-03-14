var recipeApp = angular.module('recipeApp', ['ngRoute', 'templates']);

recipeApp.config(function($routeProvider) {
  $routeProvider
    .when('/recipes', {
      templateUrl: 'main.html',
      controller: 'RecipesController'
    })
    .when('/recipes/:id', {
      templateUrl: 'show_recipe.html',
      controller: 'ShowRecipeController'
    })
    .otherwise({redirectTo: '/recipes'})
});
