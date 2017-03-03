angular
  .module('app')
  .component('homecomponent', {
    templateUrl: '../html/home/home.html',
    controller: HomeController
  });



function HomeController($scope,UserService){


$scope.estado = true

	$scope.side = function() {

		$('#sidebarfijo').removeClass('animated slideInLeft')

		$('#sidebarfijo').removeClass('animated slideOutLeft')

		



		if ($scope.estado==true){

			$scope.estado = false

			$('#sidebarfijo').addClass('animated slideInLeft');
		}
		else{

			$scope.estado = true

			$('#sidebarfijo').addClass('animated slideOutLeft');

		}

	};



}
