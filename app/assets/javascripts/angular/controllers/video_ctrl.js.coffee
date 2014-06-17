App.controller('VideoCtrl', ['$scope', '$sce', 'Video', ($scope, $sce, Video) ->
  $scope.selectedVideo = null
  $scope.videos = Video.query ->
    $scope.selectedVideo = $scope.videos[0]
    $scope.selectedVideoURL = $sce.trustAsResourceUrl($scope.selectedVideo.link)

  $scope.showVideo = (video) ->
    $scope.selectedVideo = video
    $scope.selectedVideoURL = $sce.trustAsResourceUrl($scope.selectedVideo.link)
  ])
