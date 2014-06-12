App.factory('Video', ['$resource',
  function($resource){
    return $resource('api/videos', {}, {
      query: {method: 'GET', isArray: true}
      });
  }
  ]);
