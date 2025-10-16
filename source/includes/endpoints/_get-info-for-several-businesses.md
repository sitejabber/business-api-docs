## Get info for several businesses

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/bulk?client_token=myapikey&businesses=%5B%22business1.com%22%2C%22business2.com%22%2C%22business3.com%22%5D"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$businesses = ['business1.com', 'business2.com', 'business3.com'];
$url = 'https://api.sitejabber.com/v1/businesses/bulk?client_token=myapikey&businesses=' . urlencode(json_encode($businesses));

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Array of Url Object) JSON structured like this:

```json
{  
   "urls":[  
      {  
         "name":"Business1",
         "urlAddress":"http:\/\/business1.com",
         "displayAddress":"business1.com",
         "urlProfilePage":"https:\/\/www.sitejabber.com\/reviews\/www.business1.com",
         "averageRating":[  
            {  
               "type":"overall",
               "rating":1.85
            },
            {  
               "type":"service",
               "rating":1.64
            },
            {  
               "type":"value",
               "rating":1.89
            },
            {  
               "type":"shipping",
               "rating":2.21
            },
            {  
               "type":"returns",
               "rating":1.55
            },
            {  
               "type":"quality",
               "rating":2
            }
         ],
         "numReviews":[  
            {  
               "type":"total",
               "rating":1088
            },
            {  
               "type":"fiveStars",
               "rating":146
            },
            {  
               "type":"fourStars",
               "rating":35
            },
            {  
               "type":"threeStars",
               "rating":21
            },
            {  
               "type":"twoStars",
               "rating":58
            },
            {  
               "type":"oneStar",
               "rating":828
            }
         ],
         "phone":"",
         "email":"",
         "address":{  
            "streetAddress":"FakeStreet",
            "streetAddress2":"",
            "city":"FakeCity",
            "state":"CA",
            "postalCode":"",
            "country":"USA",
            "completeAddress":"FakeCity, CA, USA"
         }
      },
      {  
         "name":"Business2",
         "urlAddress":"http:\/\/business2.com",
         "displayAddress":"business2.com",
         "urlProfilePage":"https:\/\/www.sitejabber.com\/reviews\/www.business2.com",
         "averageRating":[  
            {  
               "type":"overall",
               "rating":4.15
            },
            {  
               "type":"service",
               "rating":4.26
            },
            {  
               "type":"value",
               "rating":4.11
            },
            {  
               "type":"shipping",
               "rating":4.22
            },
            {  
               "type":"returns",
               "rating":4.19
            },
            {  
               "type":"quality",
               "rating":4.34
            }
         ],
         "numReviews":[  
            {  
               "type":"total",
               "rating":807
            },
            {  
               "type":"fiveStars",
               "rating":514
            },
            {  
               "type":"fourStars",
               "rating":147
            },
            {  
               "type":"threeStars",
               "rating":33
            },
            {  
               "type":"twoStars",
               "rating":38
            },
            {  
               "type":"oneStar",
               "rating":75
            }
         ],
         "phone":"",
         "email":"support@business2.com",
         "address":{  
            "streetAddress":"FakeStreet",
            "streetAddress2":"",
            "city":"FakeCity",
            "state":"CA",
            "postalCode":"94403",
            "country":"USA",
            "completeAddress":"FakeCity, CA 94403, USA"
         }
      },
      {  
         "name":"Business3",
         "urlAddress":"http:\/\/business3.com",
         "displayAddress":"business3.com",
         "urlProfilePage":"https:\/\/www.sitejabber.com\/reviews\/www.business3.com",
         "averageRating":[  
            {  
               "type":"overall",
               "rating":3.46
            },
            {  
               "type":"service",
               "rating":3.16
            },
            {  
               "type":"value",
               "rating":2.48
            },
            {  
               "type":"shipping",
               "rating":2.76
            },
            {  
               "type":"returns",
               "rating":2.35
            },
            {  
               "type":"quality",
               "rating":2.75
            }
         ],
         "numReviews":[  
            {  
               "type":"total",
               "rating":3061
            },
            {  
               "type":"fiveStars",
               "rating":1656
            },
            {  
               "type":"fourStars",
               "rating":334
            },
            {  
               "type":"threeStars",
               "rating":96
            },
            {  
               "type":"twoStars",
               "rating":163
            },
            {  
               "type":"oneStar",
               "rating":812
            }
         ],
         "phone":"(123) 456-7890",
         "email":"",
         "address":{  
            "streetAddress":"FakeStreet",
            "streetAddress2":"",
            "city":"FakeCity",
            "state":"OK",
            "postalCode":"73104",
            "country":"",
            "completeAddress":"FakeCity, OK 73104"
         }
      }
   ],
   "status":"OK",
   "success":true
}
```

This endpoint retrieves information for up to 20 businesses at a time

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/bulk`

### Query parameters

Parameter | Required | Description
--------- | ------- | -----------
businesses | true | all businesses to be queried encoded and json format

# Business Questions
