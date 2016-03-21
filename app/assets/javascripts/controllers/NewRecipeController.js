recipeApp.controller('NewRecipeController', function($scope, $location, recipeService) {

  $scope.recipe = {
    ingredients_attributes: []
  };

  $scope.addRecipe = function() {
    recipeService.addRecipe({ recipe: $scope.recipe }).then(function(data) {
      console.log('Recipe added.');
      $location.path('/recipes');
    });
  };

  $scope.newIngredientBox = function() {
    $scope.recipe.ingredients_attributes.push({description: ""});
  };

});
