## Get product reviews stats

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582"
https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/stats?client_token=myapikey
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/stats?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns a JSON structured like this:

```json
{
  "status": "OK",
  "product_reviews_stats": [
    "total": 55,
    "average_rating": 4.85,
    "ratings": {
      "1": {
        "num_reviews": 0,
        "rating": 1
      },
      "2": {
        "num_reviews": 0,
        "rating": 2
      },
      "3": {
        "num_reviews": 1,
        "rating": 3
      },
      "4": {
        "num_reviews": 6,
        "rating": 4
      },
      "5": {
        "num_reviews": 48,
        "rating": 5
      }
    }
  ],
  "success": true
}
```

This endpoint get the published product reviews stats (total and average rating), and detailed ratings for each star.

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/stats`

### Query parameters

Parameter | Required | Description
--------- | ------- | -----------
sku | false | retrieve stats for the given product sku
categories | false | retrieve stats for products in the given categories (separated by commas)
item_group | false | retrieve stats for the given group of products, if specified sku is ignored
brand | false | retrieve stats for products in the given brand


# Product Review Requests
