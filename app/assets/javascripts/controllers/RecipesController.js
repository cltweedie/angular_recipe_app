recipeApp.controller('RecipesController', function($scope, $http) {
  $http.get('/recipes').then(function(response) {
    $scope.recipes = response.data;
  });

  $scope.showMeal = "all";
  $scope.sortOrder = "title";

  $scope.editRecipe = function(recipe) {
    $scope.recipeToEdit = recipe;
    $scope.editRecipeTitle = recipe.title;
    $scope.editRecipeLink = recipe.link;
    $scope.editRecipeImageUrl = recipe.image_url;
  };

  $scope.getTimes = function(n){
       return new Array(n);
  };

  $scope.addRecipe = function() {
    var recipe = {
      title: $scope.newRecipeTitle,
      link: $scope.newRecipeLink,
      image_url: $scope.newRecipeImageUrl,
      meal: $scope.newRecipeMeal,
      rating: $scope.newRecipeRating
    }
    $http.post('/recipes', recipe).then(function(response) {
      $scope.recipes.push(response.data);
      $scope.newRecipeTitle = "";
      $scope.newRecipeLink = "";
      $scope.newRecipeImageUrl = "";
    });
  };

  $scope.confirmDeleteRecipe = function(recipe) {
    $scope.recipeToDelete = recipe;
  };

  $scope.deleteRecipe = function(recipe) {
    $http.delete('/recipes/' + recipe.id).then(function(response) {
      var index = $scope.recipes.indexOf(recipe);
      $scope.recipes.splice(index, 1);
      $scope.recipeToDelete = null;
    });
  };

  $scope.updateRecipe = function(recipe) {
    var updatedRecipe = {
      title: $scope.editRecipeTitle,
      link: $scope.editRecipeLink,
      image_url: $scope.editRecipeImageUrl
    }
    $http.put('/recipes/' + recipe.id, updatedRecipe).then(function(response) {
      var index = $scope.recipes.indexOf(recipe);
      $scope.recipes[index] = response.data;
      $scope.recipeToEdit = null;
    })
  }
});
