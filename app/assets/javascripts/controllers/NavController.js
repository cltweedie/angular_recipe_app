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
        Auth.login($scope.user).then(function(data) {
          $rootScope.$broadcast('LOGGED_IN', $scope.user);
          toastr.success('You have successfully logged in!', 'Welcome back');
        });
      };

    $scope.logout = function() {
      Auth.logout($scope.user).then(function(data) {
        $rootScope.$broadcast('LOGGED_OUT', true);
        toastr.success('You have successfully logged out!', 'Come back soon');
      });
    };

    $scope.register = function() {
      Auth.register($scope.user).then(function(){
        $location.path('recipes');
      });
    };

});
