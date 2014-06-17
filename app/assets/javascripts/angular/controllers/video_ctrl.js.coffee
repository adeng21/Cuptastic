App.controller('VideoCtrl', ['$scope', '$sce', 'Video', ($scope, $sce, Video) ->
  $scope.selectedVideo = null
  $scope.selectedRow = null
  $scope.videos = Video.query ->
    $scope.selectedVideo = $scope.videos[0]
    $scope.selectedRow = 0
    $scope.selectedVideoURL = $sce.trustAsResourceUrl($scope.selectedVideo.link)

  $scope.showVideo = (video, row) ->
    $scope.selectedVideo = video
    $scope.selectedRow = row
    $scope.selectedVideoURL = $sce.trustAsResourceUrl($scope.selectedVideo.link)

  ])
