var RecipesController = recipeApp.controller('RecipesController', function($scope, $http) {
  $http.get('/recipes').then(function(response) {
    $scope.recipes = response.data;
  });

  $scope.showMeal = "Dinner";

  $scope.sortOrder = "'title'";

  $scope.sortByTitle = function() {
    $scope.sortOrder = "'title'";
  },

  $scope.sortByMeal = function() {
    $scope.sortOrder = "'meal'";
  },

  $scope.editRecipe = function(recipe) {
    console.log("Editing " + recipe.title);
  };

  $scope.addRecipe = function() {
    var recipe = {
      title: $scope.newRecipeTitle,
      link: $scope.newRecipeLink,
      image_url: $scope.newRecipeImageUrl,
      meal: $scope.newRecipeMeal
    }
    $http.post('/recipes', recipe).then(function(response) {
      console.log(response);
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
  }
});

// Adding this line to try to fix issue with deploying to Heroku
RecipesController.$inject = ['$scope', '$http'];
