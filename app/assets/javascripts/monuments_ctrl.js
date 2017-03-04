(function() {
  "use strict";

  angular.module("app").controller("monumentsCtrl", function($scope, $http) {

    $scope.setup = function() {
      $http.get("https://data.cityofnewyork.us/resource/g77k-nifh.json").then(function(response) {
        $scope.monuments = response.data;
        $scope.show = true;
      });
    };

    $scope.addFavorite = function(favorite) {
      var favoriteParams = {borough: favorite.borough, name: favorite.name, descrip: favorite.descrip, location: favorite.location};
      $http.post("/api/v1/favorites.json", favoriteParams);
    };

    $scope.hideData = function(show) {
      $scope.show = !show;
    };

  });
})();