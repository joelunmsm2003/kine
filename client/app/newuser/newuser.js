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
