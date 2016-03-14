recipeApp.service('recipeService', function($http) {
  var recipes = [];

  var getRecipes = function() {
    return $http.get('/recipes');
  };

  var getRecipe = function(id) {
    return $http.get('/recipes/' + id);
  };

  var addRecipe = function(recipe) {
    return $http.post('/recipes', recipe);
  };

  var deleteRecipe = function(recipe) {
    return $http.delete('/recipes/' + recipe.id);
  };

  var updateRecipe = function(recipeId, updatedRecipe) {
    return $http.put('/recipes/' + recipeId, updatedRecipe);
  }

  return {
    recipes: recipes,
    getRecipes: getRecipes,
    getRecipe: getRecipe,
    addRecipe: addRecipe,
    deleteRecipe: deleteRecipe,
    updateRecipe: updateRecipe
  };
});
