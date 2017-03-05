angular
  .module('app')
  .component('kinescomponent', {
    templateUrl: '../html/kines/kines.html',
    controller: KinesController,
    bindings: {
      estado: '='
    }
  });



function KinesController($location,$scope,KineService,UserService,$filter,$localStorage){



    if($localStorage.token){

    console.log('TOKEN',$localStorage.token)

    $scope.token = $localStorage.token



    UserService.perfil().then(function(data) {

           $scope.perfil = data[0]
        
    })

  }

  $scope.salir = function () {

      UserService.salir()
      $location.path('/home')

    }


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
