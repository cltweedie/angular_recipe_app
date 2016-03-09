recipeApp.controller('RecipesController', function($scope, $http) {
  $http.get('/recipes').then(function(response) {
    $scope.recipes = response.data;
  });

  $scope.editRecipe = function(recipe) {
    console.log("Editing " + recipe.title);
  };

  $scope.addRecipe = function() {
    var recipe = {
      title: $scope.newRecipeTitle,
      link: $scope.newRecipeLink,
      image_url: $scope.newRecipeImageUrl
    }
    $http.post('/recipes', recipe).then(function(response) {
      console.log(response);
    });
  }
});
