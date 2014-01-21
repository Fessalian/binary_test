'use strict';

testApp.config(
  function( $routeProvider, $locationProvider ) {
    $routeProvider
      .when('/',                  { template: JST['views/recipes_list'] })
      .when('/recipes/:id',       { template: JST['views/recipes_show'] })
      .when('/recipes/new/:id',   { template: JST['views/recipes_new'] })
      .when('/recipes/edit/:id',  { template: JST['views/recipes_edit'] })
      .otherwise({redirectTo: '/'});

    $locationProvider.html5Mode(true);
  }
);

