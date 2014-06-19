App.factory('Search', ['$resource',
  function($resource){
    return $resource('api/videos?utf8=✓&q%5Bteam%5D:id&commit=Search', {id: "@id"}, {
      query: {method: 'GET', isArray: true},
      });
  }
  ]);
