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



