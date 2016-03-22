recipeApp.controller('EditRecipeController', function($scope, $routeParams, recipeService) {

  recipeService.getRecipe($routeParams.id).then(function(response) {
    $scope.recipe = response.data.recipe;
  });

  $scope.updateRecipe = function() {
    console.log($scope.recipe);
    recipeService.updateRecipe($scope.recipe.id, $scope.recipe).then(function(response) {
      console.log('updated!');
    });
  };

});
