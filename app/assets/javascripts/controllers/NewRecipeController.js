recipeApp.controller('NewRecipeController', function($scope, $http, recipeStore) {
  $scope.newRecipe = false;

  $scope.addRecipe = function() {
    var recipe = {
      title: $scope.newRecipeTitle,
      link: $scope.newRecipeLink,
      image_url: $scope.newRecipeImageUrl,
      meal: $scope.newRecipeMeal,
      rating: $scope.newRecipeRating
    }
    $http.post('/recipes', recipe).then(function(response) {
      recipeStore.recipes.push(response.data);
      $scope.newRecipeTitle = "";
      $scope.newRecipeLink = "";
      $scope.newRecipeImageUrl = "";
    });
    $scope.newRecipe = false;
  };
});
