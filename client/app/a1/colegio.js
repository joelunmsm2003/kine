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



