angular.module('starter.controllers', [])

.controller('DashCtrl', function($scope, productFactory, $state) {
    $scope.goToCat = function(var1) {
        productFactory.get(var1);
        $state.go('cat');
    }
})

.controller('CatCtrl', function($scope, productFactory, $http, $state) {
    ionic.Platform.ready(function() {
        var type = productFactory.all();
        $http.get('http://unicomhk.net/hackaton/www/php/back_search.php?action=type&query=' + type).then(function(response) {
            $scope.productlist = response.data;
        })
    })
    $scope.goToSearch = function() {
        $state.go('tab.dash');
    }
})


.controller('ChatsCtrl', function($scope, Chats) {
    // With the new view caching in Ionic, Controllers are only called
    // when they are recreated or on app start, instead of every page change.
    // To listen for when this page is active (for example, to refresh data),
    // listen for the $ionicView.enter event:
    //
    //$scope.$on('$ionicView.enter', function(e) {
    //});

    $scope.chats = Chats.all();
    $scope.remove = function(chat) {
        Chats.remove(chat);
    };
})

.controller('SearchCtrl', function($scope, $stateParams, $http, $ionicPlatform, productFactory, $state) {
    $scope.data = {};

    ionic.Platform.ready(function() {
        $scope.data = {};
        $scope.data.keyword = "";
    })

    $scope.search = function() {
        var keyword = $scope.data.keyboard;
        if (keyword != '') {
            $http.get('http://unicomhk.net/hackaton/www/php/back_search.php?action=search&query=' + keyword).then(function(response) {
                $scope.productlist = response.data;
            })
        } else {
            $scope.productlist = {};
        }
    }

    $scope.goToDetail = function(product) {
        productFactory.get(product);
        $state.go('searchDetail');
    }

})

.controller('WeekRankCtrl', function($scope, $stateParams, $http, $ionicPlatform, productFactory, $state) {
    $scope.data = {};

    ionic.Platform.ready(function() {
        $http.get('http://unicomhk.net/hackaton/www/php/orderbylikes.php?action=week').then(function(response) {
            $scope.ranklist = response.data;
        })

    })

    $scope.goToDetail = function(product) {
        productFactory.get(product);
        $state.go('searchDetail');
    }

})

.controller('MonthRankCtrl', function($scope, $stateParams, $http, $ionicPlatform, productFactory, $state) {
    $scope.data = {};

    ionic.Platform.ready(function() {
        $http.get('http://unicomhk.net/hackaton/www/php/orderbylikes.php?action=month').then(function(response) {
            $scope.ranklist = response.data;
        })

    })

    $scope.goToDetail = function(product) {
        productFactory.get(product);
        $state.go('searchDetail');
    }

})

.controller('SearchDetailCtrl', function($scope, $stateParams, $http, $ionicPlatform, productFactory, $state) {
    ionic.Platform.ready(function() {
        $scope.product = productFactory.all();
    })
    $scope.goToSearch = function() {
        $state.go('tab.search');
    }
})
