## Get info for a given business

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/yourdomain.com?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Url Object) JSON structured like this:

```json
{  
   "name":"Business",
   "urlAddress":"http:\/\/yourdomain.com",
   "displayAddress":"yourdomain.com",
   "urlProfilePage":"https:\/\/www.sitejabber.com\/reviews\/www.yourdomain.com",
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
   },
   "status":"OK",
   "success":true
}
```

This endpoint retrieves information for the given business

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com`

### Query parameters

Parameter | Default | Description
--------- | ------- | -----------
datasources | false | include ratings from specified comma separated data sources (check the data sources section)
