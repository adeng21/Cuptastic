App.controller('VideoCtrl', ['$scope', 'Video', ($scope, Video) ->

  $scope.videos = Video.query()
  ])
