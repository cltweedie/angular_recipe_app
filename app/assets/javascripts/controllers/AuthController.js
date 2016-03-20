recipeApp.controller('AuthController', function($scope, $rootScope, $location, Auth) {

  $scope.signedIn = Auth.isAuthenticated;
  $scope.logout = Auth.logout;

  Auth.currentUser().then(function(user) {
    $scope.user = user;
    $rootScope.$broadcast('LOGGED_IN', $scope.user);
  });

  $scope.$on('devise:new-registration', function (e, user){
      $scope.user = user;
      $rootScope.$broadcast('LOGGED_IN', $scope.user);
      $rootScope.userId = user.id;
    });

    $scope.$on('devise:login', function (e, user){
      console.log('logged in');
      $scope.user = user;
      $rootScope.$broadcast('LOGGED_IN', $scope.user);
      $rootScope.userId = user.id;
    });

    $scope.$on('devise:logout', function (e, user){
      $scope.user = {};
      $rootScope.$broadcast('LOGGED_OUT', true);
      $rootScope.userId = null;
    });

    $scope.login = function() {
        Auth.login($scope.user)
          .then(function(data) {
            toastr.success('You have successfully logged in!', 'Welcome back');
          })
          .catch(function() {
            toastr.error('Username or password incorrect!', 'Nope');
          });
      };

    $scope.logout = function() {
      Auth.logout($scope.user).then(function(data) {
        toastr.success('You have successfully logged out!', 'Come back soon');
      });
    };

    $scope.register = function() {
      Auth.register($scope.user).then(function(data){
        toastr.success('You have successfully signed up!', 'Welcome');
        $location.path('recipes');
      });
    };

});
