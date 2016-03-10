recipeApp.controller('RecipesController', function($scope, $http, recipeStore) {

  $scope.recipeStore = recipeStore;
  $scope.recipes = recipeStore.recipes;

  $scope.getRecipes = function() {
    console.log('getting recipes...');
    $http.get('/recipes').then(function(response) {
      recipeStore.recipes = response.data;
      console.log(recipeStore.recipes);
    });
  };

  $scope.$watch('recipeStore.recipes',function(newValue, oldValue) {
    console.log($scope.recipeStore);
    console.log(newValue, oldValue);
    if(newValue) {
      $scope.recipes = newValue;
      console.log($scope.recipes);
    }
  }, true);

  $scope.getRecipes();

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

  $scope.confirmDeleteRecipe = function(recipe) {
    $scope.recipeToDelete = recipe;
  };

  $scope.deleteRecipe = function(recipe) {
    $http.delete('/recipes/' + recipe.id).then(function(response) {
      var index = recipeStore.recipes.indexOf(recipe);
      recipeStore.recipes.splice(index, 1);
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
      var index = recipeStore.recipes.indexOf(recipe);
      recipeStore.recipes[index] = response.data;
      $scope.recipeToEdit = null;
    })
  };
});
