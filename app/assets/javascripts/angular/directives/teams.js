App.directive('worldCupTeams', function(){
  return{
    restrict: 'EA',
    scope: {update: "&"},
    template: '<input type="text" ng-model="team">' + '<input type="button" ng-click="update({team:team})"> Choose Team! </div>'
  };
});
