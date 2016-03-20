recipeApp.controller('NewRecipeController', function($scope, $location, recipeService) {

  $scope.addRecipe = function() {
    recipeService.addRecipe($scope.recipe).then(function(data) {
      console.log('Recipe added.');
      $location.path('/recipes');
    });
  };

});
