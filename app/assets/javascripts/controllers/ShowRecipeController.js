recipeApp.controller('ShowRecipeController', function($scope, recipeService, $routeParams) {

  recipeService.getRecipe($routeParams.id).then(function(response) {
    $scope.recipe = response.data.recipe;
    $scope.steps = response.data.steps;
    $scope.ingredients = response.data.ingredients;
    console.log(response.data);
  });

  $scope.getTimes = function(n){
    return new Array(n);
  };

});
