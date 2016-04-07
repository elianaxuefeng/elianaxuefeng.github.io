angular.module('starter.controllers', [])

.controller('flipCtrl', function($scope) {
   $scope.mildquestions = [
        {"question":"I like my spicy food ______", "answer1":"Extremely spicy!", "answer2":"Hot!", "answer3":"A little spicy.","answer4":"Mild."},
        {"question":"If I was given one chance to travel through time I would _______", "spiciness":"hot hot hot!"},
        {"question":"question3", "spiciness":"LAVA HOT!!"}
        ];

  
}) 

.controller('DashCtrl', function($scope) {})

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

.controller('ChatDetailCtrl', function($scope, $stateParams, Chats) {
  $scope.chat = Chats.get($stateParams.chatId);
})

.controller('AccountCtrl', function($scope) {
  $scope.settings = {
    enableFriends: true
  };
});
