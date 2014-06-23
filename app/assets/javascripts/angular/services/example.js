App.service("Example", function($http){
  var videos = {};
  return {
    initialVideos: function (){
      $http.get('/api/videos').success(function(data, status, headers, config){
        angular.copy(data.videos, videos);
      });
    },
    updateVideos: function(form){
      $http.get('api/videos?utf8=✓&q%5Bteam%5DArgentina&commit=Search', form).success(function(data){
        angular.copy(data.videos, videos);
      });
    },
    videos: videos
  };
});
