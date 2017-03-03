<?php
$json = '{
"aaa":1,
"b":2,
"c":3,
"d":4,
"e":5,
"fff":{"a":11111,"b":222222,"c":33333,"d":444454,"e":55555555},
"last":[
      {
        "id": 8817,
        "loc": "NEW YORK CITY"
      },
      {
        "id": 2873,
        "loc": "UNITED STATES"
      },
      {
        "id": 1501,
        "loc": "NEW YORK STATE"
      }
    ]
}';


$php = json_decode($json, true);
echo var_export($php);