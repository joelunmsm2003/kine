angular
  .module('app')
  .component('homecomponent', {
    templateUrl: '../html/home/home.html',
    controller: HomeController
  });



function HomeController($scope,UserService,$localStorage){


$scope.estado = true

	$scope.side = function() {

		$('#sidebarfijo').removeClass('animated fadeInLeft')

		$('#sidebarfijo').removeClass('animated fadeOutLeft')

		



		if ($scope.estado==true){

			$scope.estado = false

			$('#sidebarfijo').addClass('animated fadeInLeft');
		}
		else{

			$scope.estado = true

			$('#sidebarfijo').addClass('animated fadeOutLeft');

		}

	};






}
