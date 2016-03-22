recipeApp.controller('RecipesController', function($scope, $rootScope, $location, recipeService) {

  if ($location.path() == '/recipes/mine') {
    if ($rootScope.userId) {
      recipeService.getMyRecipes($rootScope.userId).then(function(response) {
        $scope.recipes = response.data;
      });
    }
    $scope.$on('LOGGED_IN', function(event, data) {
      $scope.user = data;
      recipeService.getMyRecipes($scope.user.id).then(function(response) {
        $scope.recipes = response.data;
      });
    });
    $scope.$on('LOGGED_OUT', function(event, data) {
      $scope.user = false;
    });
  } else {
    recipeService.getRecipes().then(function(response) {
      $scope.recipes = response.data;
    });
  }

  $scope.showMeal = "all";
  $scope.sortOrder = "title";

  $scope.getTimes = function(n){
       return new Array(n);
  };

  $scope.confirmDeleteRecipe = function(recipe) {
    $scope.recipeToDelete = recipe;
  };

  $scope.deleteRecipe = function(recipe) {
    recipeService.deleteRecipe(recipe).then(function(response) {
      var index = $scope.recipes.indexOf(recipe);
      $scope.recipes.splice(index, 1);
      $scope.recipeToDelete = null;
    });
  };
});
