recipeApp.factory('recipeStore', function($http, $rootScope) {
  var recipes = [];

  return {
    recipes: recipes
  };
});
