recipeApp.controller('ShowRecipeController', function($scope, recipeService, $routeParams) {

  recipeService.getRecipe($routeParams.id).then(function(response) {
    console.log(response);
    $scope.recipe = response.data;
  });

});
