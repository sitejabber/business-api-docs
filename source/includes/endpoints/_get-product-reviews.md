## Get product reviews

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582"
https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews?client_token=myapikey
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Array of ProductReview Object) JSON structured like this:

```json
{
  "product_reviews": [
    {
      "id": 26147,
      "title": "VERY VERY FUN",
      "content": "I bought 2 of these, we use them both everyday",
      "rating": 5,
      "order_id": "XYZ123",
      "user": {
        "username": "user123",
        "firstName": "John",
        "lastName": "D",
        "thumbnail": "https://www.sitejabber.com/img/stock_photos/536/thumbnail_small.1582290982.jpg",
		"profilePage": "https://www.sitejabber.com/users/user123",
        "numReviews": 0,
        "numHelpfulVotes": 0
      },
      "user_location": null,
      "attributes": [],
	  "images": [
        {
          "caption": "",
          "original": "https://www.sitejabber.com/img/products/4770/picture_25.1615306739.jpg",
          "normal": "https://www.sitejabber.com/img/products/4770/thumbnail_25_normal.1615306739.jpg",
          "large": "https://www.sitejabber.com/img/products/4770/thumbnail_25_large.1615306739.jpg",
		  "small": "https://www.sitejabber.com/img/products/4770/thumbnail_25_small.1615306739.jpg",
		  "created": "2020/02/18 08:19:04",
		  "createdRFC": "2020/02/18T08:19:04-07:00"
        },
        {
          "caption": "",
          "original": "https://www.sitejabber.com/img/products/4770/picture_26.1615306741.jpg",
          "normal": "https://www.sitejabber.com/img/products/4770/thumbnail_26_normal.1615306740.jpg",
          "large": "https://www.sitejabber.com/img/products/4770/thumbnail_26_large.1615306741.jpg",
		  "small": "https://www.sitejabber.com/img/products/4770/thumbnail_26_small.1615306741.jpg",
		  "created": "2020/02/19 08:19:04",
		  "createdRFC": "2020/02/19T08:19:04-07:00"
        }
	  ],
      "solicited": "Yes",
      "votes": 0,
      "num_positive_votes": 0,
      "num_negative_votes": 0,
      "published": "2019/11/06 06:00:02",
      "publishedRFC": "2019/11/06T06:00:02-07:00",
      "created": "2019/11/05 08:41:29",
      "createdRFC": "2019/11/05T08:41:29-07:00",
      "product": {
        "id": 26,
        "sku": "4770",
        "item_group": "4770_group",
        "gtin": null,
        "mpn": null,
        "brand": "Nintendo",
        "title": "Nintendo Switch Super Mario Bundle",
        "description": null,
        "categories": [
          {
            "category_name": "Gaming"
          }
        ],
        "price": 529,
        "retail_price": null,
        "currency": "USD",
        "product_link": "https://xyz.xyz/ProductDetail/4770",
        "images": [
          {
            "url": "https://xyz.xyz/img/4770.jpg"
          }
        ],
        "attributes": [],
        "num_reviews": 26,
        "average_rating": 4.54,
        "created": "2018/07/13 01:18:35",
        "createdRFC": "2018/07/13T01:18:35-07:00"
      }
    },
  ],
"count": 1,
"start": 0,
"query": null,
"status": "OK",
"success": true
}
```

This endpoint get all product reviews.

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews`

### Query parameters

Parameter | Required | Description
--------- | ------- | -----------
start | 0 | starting offset
count | 10 | number of reviews to be included (max 100)
sku | false | retrieve reviews for the given product sku
item_group | false | retrieve reviews for the given group of products, if specified sku is ignored
q | false | retrieve product reviews matching given keyword
brand | false | retrieve products matching brand
categories | false | retrieve products in the given categories
only_photos | false | retrieve product reviews containing customer product images, default 0 (1=Yes, 0=No)
price_range | false | retrieve products in the given prices [min],[max]
reviews_range | false | retrieve products with the given number of reviews [min],[max]
deleted | false | returns only deleted product reviews (0 or 1)
date_from | false | start date in format (yyyy-mm-dd hh:mm:ss) [hh:mm:ss] is optional
date_to | false | end date in format (yyyy-mm-dd hh:mm:ss) [hh:mm:ss] is optional
