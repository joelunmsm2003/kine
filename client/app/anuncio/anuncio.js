angular
  .module('app')
  .component('anunciocomponent', {
    templateUrl: '../html/anuncio/anuncio.html',
    controller: AnuncioController
  });



function AnuncioController($scope,UserService,$localStorage){


	console.log('$localStorage',$localStorage)


	

		console.log(UserService.perfil())
	





}
