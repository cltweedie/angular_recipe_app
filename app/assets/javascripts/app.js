var recipeApp = angular.module('recipeApp', ['ngRoute']);

recipeApp.config(function($routeProvider) {
  $routeProvider
    .when('/recipes', {
      templateUrl: 'home/main.html',
      controller: 'RecipesController'
    })
    .otherwise({redirectTo: '/recipes'})
});
