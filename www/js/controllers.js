var myApp = angular.module('starter.controllers', []);

myApp.directive('noScroll', function($document) {

  return {
    restrict: 'A',
    link: function($scope, $element, $attr) {

      $document.on('touchmove', function(e) {
        e.preventDefault();
      });
    }
  }
});

myApp.controller('CardsCtrl', function($scope, $ionicSwipeCardDelegate) {
  var cardTypes = [
        {question:"I like my spicy food to be ______", 
         answer1:"Extremely spicy!", 
         answer2:"A little spicy.", 
         answer3:"Mild.",
         answer4:"Hot!"
         },
        {question:"If I was given one chance to travel through time I would ______", 
         answer1:"Do nothing - time travel could invoke chaos.", 
         answer2:"Alter something I regret.", 
         answer3:"Alter events in history for the greater good.",
         answer4:"Use past/future info for personal gain."
        },
        {question:"I think my date would be most likely to play a leading part in a() ______ movie", 
         answer1:"Horror", 
         answer2:"Action", 
         answer3:"Drama",
         answer4:"Comedy"
        }];

  $scope.cards = Array.prototype.slice.call(cardTypes, 0, 0);

  $scope.cardSwiped = function(index) {
    $scope.addCard();
  };

  $scope.cardDestroyed = function(index) {
    $scope.cards.splice(index, 1);
  };

  $scope.addCard = function() {
    var newCard = cardTypes[Math.floor(Math.random() * cardTypes.length)];
    newCard.id = Math.random();
    $scope.cards.push(angular.extend({}, newCard));
  }
});


  /*myApp.controller('CardCtrl', function($scope, $ionicSwipeCardDelegate) {
  $scope.goAway = function() {
    var card = $ionicSwipeCardDelegate.getSwipeableCard($scope);
    card.swipe();
  };
});
*/










myApp.controller('DashCtrl', ["$scope", function($scope) {}]);

myApp.controller('ChatsCtrl', ["$scope","Chats",function($scope, Chats) {
  // With the new view caching in Ionic, Controllers are only called
  // when they are recreated or on app start, instead of every page change.
  // To listen for when this page is active (for example, to refresh data),
  // listen for the $ionicView.enter event:
  //
  //$scope.$on('$ionicView.enter', function(e) {
  //});

  //$scope.chats = Chats.all();
  //$scope.remove = function(chat) {
    //Chats.remove(chat);
  //};
}]);

myApp.controller('ChatDetailCtrl', ["$scope","$stateParams","Chats", function($scope, $stateParams, Chats) {
  //$scope.chat = Chats.get($stateParams.chatId);
}]);

myApp.controller('AccountCtrl', ["$scope", function($scope) {
 // $scope.settings = {
   // enableFriends: true
  //};
}]);
