recipeApp.service('recipeService', function($http, $rootScope) {
  var recipes = [];
  var user;

  var getRecipes = function() {
    return $http.get('/recipes');
  };

  var getMyRecipes = function(userId) {
    return $http({
      url: '/recipes/mine',
      method: 'GET',
      params: { user_id: userId }
    });
  };

  var getRecipe = function(id) {
    return $http.get('/recipes/' + id);
  };

  var addRecipe = function(recipe) {
    recipe.user_id = user.id;
    return $http.post('/recipes', recipe);
  };

  var deleteRecipe = function(recipe) {
    return $http.delete('/recipes/' + recipe.id);
  };

  var updateRecipe = function(recipeId, updatedRecipe) {
    return $http.put('/recipes/' + recipeId, updatedRecipe);
  };

  $rootScope.$on('LOGGED_IN', function(event, data) {
    user = data;
  });

  $rootScope.$on('LOGGED_OUT', function(event, data) {
    user = false;
  });

  return {
    recipes: recipes,
    getRecipes: getRecipes,
    getRecipe: getRecipe,
    addRecipe: addRecipe,
    deleteRecipe: deleteRecipe,
    updateRecipe: updateRecipe,
    getMyRecipes: getMyRecipes
  };
});
