// Creates new Angular module called 'Homebase'
var Homebase = angular.module('Homebase',['ngRoute']);

// Sets up routing
Homebase.config(['$routeProvider', function($routeProvider) {
    //Default
    $routeProvider.otherwise({
      templateUrl: '../assets/homeIndex.html',
      controller: 'IndexCtrl'
    })
  }
]);

var IndexCtrl = ['$scope', function($scope) {
  $scope.title = "Homebase";
}];
