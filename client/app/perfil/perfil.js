angular
  .module('app')
  .component('perfilcomponent', {
    templateUrl: '../html/perfil/perfil.html',
    controller: PerfilController
  });



function PerfilController($state,$location,$localStorage,$scope,UserService,KineService,$filter){


	$scope.host = host


	


		UserService.perfil().then(function(response) {

		$scope.perfil = response[0]

		$scope.user_id = $scope.perfil['id']

		console.log('user...',$scope.user_id)

		
    })
	


	KineService.listar().then(function(data) {




$scope.kines = $filter('filter')(data,{ 'user_id' : $scope.user_id})



    })

    $scope.reload = function(){

    	$state.reload()
    }






}
