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



