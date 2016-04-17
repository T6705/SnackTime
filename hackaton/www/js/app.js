// Ionic Starter App

// angular.module is a global place for creating, registering and retrieving Angular modules
// 'starter' is the name of this angular module example (also set in a <body> attribute in index.html)
// the 2nd parameter is an array of 'requires'
// 'starter.services' is found in services.js
// 'starter.controllers' is found in controllers.js
angular.module('starter', ['ionic', 'starter.controllers', 'starter.services'])

.run(function($ionicPlatform) {
    $ionicPlatform.ready(function() {
        // Hide the accessory bar by default (remove this to show the accessory bar above the keyboard
        // for form inputs)
        if (window.cordova && window.cordova.plugins && window.cordova.plugins.Keyboard) {
            cordova.plugins.Keyboard.hideKeyboardAccessoryBar(true);
            cordova.plugins.Keyboard.disableScroll(true);

        }
        if (window.StatusBar) {
            // org.apache.cordova.statusbar required
            StatusBar.styleDefault();
        }
    });
})

.config(function($stateProvider, $urlRouterProvider, $compileProvider, $ionicConfigProvider) {

    // Ionic uses AngularUI Router which uses the concept of states
    // Learn more here: https://github.com/angular-ui/ui-router
    // Set up the various states which the app can be in.
    // Each state's controller can be found in controllers.js
    $compileProvider.imgSrcSanitizationWhitelist(/^\s*(https?|local|data|ftp|file|blob):|data:image\//);
    $ionicConfigProvider.tabs.position('bottom');
    $ionicConfigProvider.views.maxCache(3);
    $ionicConfigProvider.navBar.alignTitle('center');
    $stateProvider

    // setup an abstract state for the tabs directive
        .state('tab', {
        url: '/tab',
        abstract: true,
        templateUrl: 'templates/tabs.html',
        cache: false

    })

    // Each tab has its own nav history stack:

    .state('tab.dash', {
        url: '/dash',
        views: {
            'tab-dash': {
                templateUrl: 'templates/tab-dash.html',
                controller: 'DashCtrl',
                cache: false
            }
        }
    })

    .state('tab.search', {
        url: '/search',
        views: {
            'tab-search': {
                templateUrl: 'templates/tab-search.html',
                controller: 'SearchCtrl',
                cache: false

            }
        }
    })

    .state('searchDetail', {
        url: '/searchDetail',
        templateUrl: 'templates/tab-search-detail.html',
        controller: 'SearchDetailCtrl',
        cache: false
    })

    .state('cat', {
        url: '/cat',
        templateUrl: 'templates/catlog.html',
        controller: 'CatCtrl',
        cache: false
    })


    .state('tab.rank', {
        url: '/rank',
        views: {
            'tab-rank': {
                templateUrl: 'templates/tab-rank.html',
                abstract: true,

            }
        }
    })

    .state('tab.rank.week', {
            url: '/week',
            cache: false,
            views: {
                'tab-rank-week': {
                    templateUrl: 'templates/tab-rank-week.html',
                    cache: false,
                    controller: 'WeekRankCtrl',
                }
            }
        })
        .state('tab.rank.month', {
            url: '/month',
            cache: false,
            views: {
                'tab-rank-month': {
                    templateUrl: 'templates/tab-rank-month.html',
                    cache: false,
                    controller: 'MonthRankCtrl',

                }
            }
        })

    .state('tab.rank.year', {
        url: '/year',
        cache: false,
        views: {
            'tab-rank-year': {
                templateUrl: 'templates/tab-rank-year.html',
                cache: false,
            }
        }
    })

    .state('tab.account', {
        url: '/account',
        views: {
            'tab-account': {
                templateUrl: 'templates/tab-signup.html',
                cache: false,
            }
        }
    })

    .state('tab.group', {
        url: '/group',
        views: {
            'tab-group': {
                templateUrl: 'templates/tab-group.html',
                cache: false
            }
        }
    });


    // if none of the above states are matched, use this as the fallback
    $urlRouterProvider.otherwise('/tab/dash');

});
