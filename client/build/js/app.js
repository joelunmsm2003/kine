function ColegioService ($http,$q,$log,$localStorage) {  
    return {
        colegios: colegios,
        colegio: colegio
    }


    function colegio (data){


        console.log('ingresar...',data)

        var defered = $q.defer();
        var promise = defered.promise;

        $http({

        url: host+"api-token-auth/",
        data: data,
        method: 'POST'
        }).
        success(function(data) {


        console.log(data)

        $localStorage.token = data.token;

        return promise;

        })


    }


    function colegios (){

        var defered = $q.defer();

        var promise = defered.promise;

        $http.get(host+'colegios/')

        .success(function(data) {

        defered.resolve(data);

        })

        return promise

    }


}




function KineService ($http,$q,$log,$localStorage) {  
    return {
        crear: crear,
        distritos:distritos,
        listar:listar
    }



    function crear(data,photo){

        console.log('Creando...',data,photo)

        var file = photo;



        var defered = $q.defer();
        var promise = defered.promise;

        $http({

        url: host+"kine/",
        data: data,
        method: 'POST'
        }).
        success(function(data) {

        console.log('Kine.....',data)


                /// Agregando Foto para esta kine

                    var fd = new FormData();

                    fd.append('file', file);

                    fd.append('id', data);

                    $http.post(host+'uploadphoto/', fd, {
                    transformRequest: angular.identity,
                    headers: {'Content-Type': undefined}
                    })

                    .success(function(data){

                        console.log(data)


                    })


        return promise;

        })

    }


    function distritos() {

            var def = $q.defer();

            $http.get(host+'distritos/').success(function(data) {

                    def.resolve(data);
                })
               
            return def.promise;
        }

    function listar() {

            var def = $q.defer();

            $http.get(host+'kinelist/').success(function(data) {

                    def.resolve(data);
                })
               
            return def.promise;
        }



}




function UserService ($http,$q,$log,$localStorage,$location,$localStorage) {  
    return {
        ingresar: ingresar,
        crear:crear,
        perfil:perfil,
        salir:salir
    }


    function ingresar (data){


        console.log('ingresar...',data)

        var defered = $q.defer();
        var promise = defered.promise;

        $http({

        url: host+"api-token-auth/",
        data: data,
        method: 'POST'
        }).
        success(function(data) {


        console.log(data)

        $localStorage.token = data.token;

        $location.path('/perfil')


        return promise;

        })


    }

    function salir (){

        delete $localStorage.token;

        $location.path('/')

    }




    function crear (data){

        console.log('ingresar...',data)

        var defered = $q.defer();

        var promise = defered.promise;

        $http({

        url: host+"registra/",
        data: data,
        method: 'POST'
        }).
        success(function(data) {

                $http({

                url: host+"api-token-auth/",
                data: data,
                method: 'POST'
                }).
                success(function(data) {


                console.log(data)

                $localStorage.token = data.token;

                 $location.path('/anuncio')

                })

        return promise;

        })

    }

    function perfil (){

        var defered = $q.defer();

        var promise = defered.promise;

        $http.get(host+'perfil/')

        .success(function(data) {

        console.log('perfil',data)

        defered.resolve(data);

        })

        return promise

    }


}





angular

.module('app', ['ngSanitize','angular-input-stars','rzModule','ui.router','ngStorage','ui.bootstrap','ngAnimate','ngTouch','ngScrollTo','flow','xeditable','ngResource','gettext','ngMap','ngLocale','tmh.dynamicLocale','wyvernzora.un-svg'])
      
.config(routesConfig)
.service('UserService', UserService)
.service('ColegioService', ColegioService)
.service('KineService', KineService)

   .directive('fileModel', ['$parse', function ($parse) {
            return {
               restrict: 'A',
               link: function(scope, element, attrs) {
                  var model = $parse(attrs.fileModel);
                  var modelSetter = model.assign;
                  
                  element.bind('change', function(){
                     scope.$apply(function(){
                        modelSetter(scope, element[0].files[0]);
                     });
                  });
               }
            };
         }])

function routesConfig($stateProvider, $urlRouterProvider, $locationProvider,$httpProvider) {

	$stateProvider

		.state('andy',{
			url : '/andy',
			template: "<andycomponent></andycomponent>",

		})

		.state('anuncio',{
			url : '/anuncio',
			template: "<anunciocomponent></anunciocomponent>",

		})

		.state('redirect',{
			url : '/redirect',
			template: "<redirectcomponent></redirectcomponent>",

		})

		.state('perfil',{
			url : '/perfil',
			template: "<perfilcomponent></perfilcomponent>",

		})

		.state('home',{
			url : '/home',
			template: "<homecomponent></homecomponent>",

		});


		$urlRouterProvider.otherwise('/home');


	host = 'http://192.168.1.40:8000/'


	$locationProvider.html5Mode(true);

	$httpProvider.interceptors.push(['$q', '$location', '$localStorage', function($q, $location, $localStorage) {
	return {
	    'request': function (config) {
	        config.headers = config.headers || {};
	        if ($localStorage.token) {
	            config.headers.Authorization = 'Bearer ' + $localStorage.token;
	        }
	        return config;
	    },
	    'responseError': function(response) {
	        if(response.status === 401 || response.status === 403) {

	            $location.path('/redirect');
	        }
	        return $q.reject(response);
	    }
	};
	}]);


}
angular
  .module('app')
  .component('alumnoscomponent', {
    templateUrl: '../html/alumnos/alumnos.html',
    controller: AlumnosController,
    bindings: {
      alumnos: '='
    }
  });



function AlumnosController($scope){

	this.alumnos

	.then(function(data) {

            $scope.alumnos=data

            console.log('UA',data)
        
    })






}

angular
  .module('app')
  .component('andycomponent', {
    templateUrl: 'html/andy/andy.html',
    controller: AndyController
  });


function AndyController(){

}

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

angular
  .module('app')
  .component('colecomponent', {
    templateUrl: 'html/colegio/colegio.html',
    controller: ColeController
  });


function ColeController(ColegioServicio){


	console.log('cole..',ColegioServicio.alumnos())

}

angular
  .module('app')
  .component('headercomponent', {
    templateUrl: '../html/header/header.html',
    controller: HeaderController,
     bindings: {
        onSidebar: '&'
    }
  });



function HeaderController($scope,$location,$localStorage,UserService){

    var ctrl = this;


    ctrl.sidebar = function() {

    
      ctrl.onSidebar();

      
    };

    $scope.search = function(){

      console.log('data')

    }

   $scope.salir = function () {

      UserService.salir()

    }


  if($localStorage.token){

    console.log('TOKEN',$localStorage.token)

    $scope.token = $localStorage.token



    UserService.perfil().then(function(data) {

           $scope.perfil = data[0]
        
    })





  }


}

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

angular
  .module('app')
  .component('ingresarcomponent', {
    templateUrl: '../html/ingresar/ingresar.html',
    controller: IngresarController
  });


function IngresarController($scope,UserService){



	$scope.ingresar = function(data){

	console.log('Ijjjsjs',UserService.ingresar(data))

	$("#myModal").modal('hide');

	
	swal.close()


	}


}

angular
  .module('app')
  .component('kinescomponent', {
    templateUrl: '../html/kines/kines.html',
    controller: KinesController,
    bindings: {
      estado: '='
    }
  });



function KinesController($scope,KineService,$filter){

  $scope.dist=true


  $scope.host=host


  $scope.greaterThan = function(prop, min,max){
    return function(item){

      console.log('ddd',item)
      return item[prop] >= min && item[prop] <= max;
    }
}


  //Range slider config
    $scope.minRangeSlider = {
        minValue: 0,
        maxValue: 200,
        options: {
            floor: 0,
            ceil: 500,
            step: 1,
            onChange: function () {

                  $scope.min = $scope.minRangeSlider.minValue
                

                  $scope.max = $scope.minRangeSlider.maxValue

                console.log($scope.minRangeSlider.minValue)

                console.log($scope.minRangeSlider.maxValue)

                
            }
        }
    };


  KineService.listar().then(function(data) {

  $scope.kines = data

  $scope.min = $scope.kines[0]['min']

  $scope.max = $scope.kines[0]['max']

  $scope.minRangeSlider.minValue = $scope.min

  $scope.minRangeSlider.maxValue = $scope.max

  $scope.minRangeSlider.options.ceil = $scope.max

  console.log('ooo',$scope.kines)

  $scope.kinesmaster = data
        
  })

  KineService.distritos().then(function(data) {

    $scope.distritos = data
        
  })

  $scope.changedistrito = function(data){


    $scope.dist=false

    console.log('hghgh',data.distrito.name)

    $scope.kines = $filter('filter')($scope.kinesmaster,{ 'distrito__name' : data.distrito.name})

    $scope.min = $scope.kines[0]['min']

    $scope.max = $scope.kines[0]['max']

    $scope.minRangeSlider.minValue = $scope.min

    $scope.minRangeSlider.maxValue = $scope.max



  }




}

angular
  .module('app')
  .component('newusercomponent', {
    templateUrl: '../html/newuser/newuser.html',
    controller: NewuserController
  });



function NewuserController($location,$scope,KineService,UserService,$http){


	$scope.setFile = function(element) {

		    $scope.currentFile = element.files[0];

		    var reader = new FileReader();

		    reader.onload = function(event) {

		    $scope.upload =true

		    $scope.image_source = event.target.result

		    $scope.$apply()

		    console.log('hdhdhd',$scope.myFile)

    		}
    // when the file is read it triggers the onload event above.
    reader.readAsDataURL(element.files[0]);

    }

    $scope.uploadFile = function(data){

    	var file = $scope.myFile;

    	    var fd = new FormData();

    	    console.log(file)

       fd.append('file', file);
    
       $http.post(host+'uploadphoto/', fd, {
          transformRequest: angular.identity,
          headers: {'Content-Type': undefined}
       })
    
       .success(function(data){



       })

            
	};



	$scope.user = {}

	UserService.perfil().then(function(data) {

           $scope.perfil = data[0]

           $scope.user.name = $scope.perfil.first_name

           $scope.user.phone = $scope.perfil.phone

          
        
    })

	

	$scope.newuser = function(data){

		console.log('gfgfgf',data)

	}

	

	$scope.createuser = function(data){

		console.log(data)

			

		KineService.crear(data,$scope.myFile)

		$location.path('/perfil')




			
	}



	KineService.distritos().then(function(data) {

           $scope.distritos = data
        
    })

    

}

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

angular
  .module('app')
  .component('redirectcomponent', {
    templateUrl: '../html/redirect/redirect.html',
    controller: RedirectController
  });



function RedirectController($scope,KineService){


	


}

angular
  .module('app')
  .component('signupcomponent', {
    templateUrl: '../html/signup/signup.html',
    controller: SignupController
  });


function SignupController($scope,UserService){

	
	$scope.creauser = function(data){

	
		UserService.crear(data, function(response) {

		console.log('iiiii',response);


		})

		    
		//UserService.ingresar(data)
	}


}
