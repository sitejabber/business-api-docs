## Get top rated product

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/top-rated?client_token=myapikey&category_name=Tablets&currency=CAD"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/top-rated?client_token=myapikey&category_name=Tablets&currency=CAD';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns JSON structured like this:

```json
{  
   "products":[  
      {
         "id":1,
         "sku":"9998",
         "brand":"Asus",
         "title":"Asus i3 Laptop",
         "categories":[  
            {  
               "category_name":"Laptops"
            }
         ],
         "price":99,
         "retail_price":null,
         "currency":"USD",
         "product_link":"https:\/\yourdomain.com/asus-laptop",
         "images":[  
            {  
               "url":"https:\/\/yourdomain.com/img/asus-laptop.jpg"
            }
         ],
         "attributes":[  

         ],
         "num_reviews":10,
         "average_rating":3.5,
         "created":"2017\/06\/13 13:47:39",
         "createdRFC":"2017\/06\/13T13:47:39-07:00",
         "category_name":"Laptops"
      },
      {  
         "id":2,
         "sku":"9999",
         "brand":"Sony",
         "title":"Playstation 4",
         "categories":[  
            {  
               "category_name":"Games"
            }
         ],
         "price":99,
         "retail_price":null,
         "currency":"USD",
         "product_link":"https:\/\yourdomain.com/playstation-4",
         "images":[  
            {  
               "url":"https:\/\/yourdomain.com/img/playstation.jpg"
            }
         ],
         "attributes":[  

         ],
         "num_reviews":14,
         "average_rating":4.2,
         "created":"2017\/06\/13 14:47:39",
         "createdRFC":"2017\/06\/13T14:47:39-07:00",
         "category_name":"Games"
      },
      ....
   ],
   "status":"OK",
   "success":true
}
```

This endpoint get the top rated product for a given category. If no category is specified, all categories are returned with their respective top rated product.

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/top-rated`

### Post parameters

Parameter | Required | Description
--------- | ------- | -----------
category_name | false | The name of category to get the top rated product
currency | false | Add currency filter, used to filter by country
