recipeApp.controller('NavController', function($scope, $rootScope, Auth) {

  $scope.signedIn = Auth.isAuthenticated;
  $scope.logout = Auth.logout;

  Auth.currentUser().then(function(user) {
    $scope.user = user;
  });

  $scope.$on('devise:new-registration', function (e, user){
      $scope.user = user;
    });

    $scope.$on('devise:login', function (e, user){
      $scope.user = user;
    });

    $scope.$on('devise:logout', function (e, user){
      $scope.user = {};
    });

    $scope.login = function() {
        Auth.login($scope.user);
        $rootScope.$broadcast('LOGGED_IN', $scope.user);
      };

    $scope.logout = function() {
      Auth.logout($scope.user);
    };

    $scope.register = function() {
      Auth.register($scope.user).then(function(){
        $location.path('recipes');
      });
    };

});
