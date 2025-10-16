## Get product questions

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/yourdomain.com/product/questions?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/product/questions?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Array of ProductQuestion Object) JSON structured like this:

```json
{
  "status": "OK",
  "url": {
    "name": "Your Domain",
    "urlAddress":"http:\/\/yourdomain.com",
    "displayAddress":"yourdomain.com",
    "urlProfilePage":"https:\/\/www.sitejabber.com\/reviews\/www.yourdomain.com",
    "averageRating": [
      {
        "type": "overall",
        "rating": 3.56
      },
      {
        "type": "service",
        "rating": 2
      },
      {
        "type": "value",
        "rating": 0
      },
      {
        "type": "shipping",
        "rating": 0
      },
      {
        "type": "returns",
        "rating": 1
      },
      {
        "type": "quality",
        "rating": 0
      }
    ],
    "numReviews": [
      {
        "type": "total",
        "rating": 9
      },
      {
        "type": "fiveStars",
        "rating": 0
      },
      {
        "type": "fourStars",
        "rating": 0
      },
      {
        "type": "threeStars",
        "rating": 0
      },
      {
        "type": "twoStars",
        "rating": 1
      },
      {
        "type": "oneStar",
        "rating": 1
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
  },
  "questions": [
    {
      "content": "Are there any other colour options available besides clear?",
      "created": "2021/07/07 00:33:38",
      "createdRFC": "2021-07-07T00:33:38+00:00",
      "published": "2021/07/07 00:37:09",
      "publishedRFC": "2021-07-07T00:37:09+00:00",
      "removed": false,
      "num_answers": 0,
      "sum_votes": 0,
      "answers": [
        {
          "content": "Yes, this screen also comes in smoke, dark smoke, and black. If you'd like us to order in one of those colours, simply contact us and we can add one to our next Puig shipment for you.",
          "created": "2021/07/07 00:37:41",
          "createdRFC": "2021-07-07T00:37:41+00:00",
          "published": "2021/07/07 00:38:06",
          "publishedRFC": "2021-07-07T00:38:06+00:00",
          "num_votes": 0,
          "num_positive_votes": 0,
          "num_negative_votes": 0,
          "author": {
            "username": "test",
            "firstName": "Test",
            "lastName": "L",
            "thumbnail": "https:\/\/www.sitejabber.com\/img\/profile-default%402x.png",
            "profilePage": "https:\/\/www.sitejabber.com\/users\/test",
            "numReviews": 0,
            "numHelpfulVotes": 0,
            "user_photo": null
          }
        }
      ],
      "product": {
        "sku": "6486W",
        "item_group": null,
        "gtin": "6486000000877",
        "mpn": null,
        "brand": "Puig",
        "title": "Puig Touring Screen",
        "description": null,
        "categories": [],
        "price": 25.95,
        "retail_price": null,
        "currency": null,
        "product_link": "https:\/\/product.test.sitejabber.com\/puig-touring-screen-bmw-r1200gs-13-18-r1200gs-adve",
        "images": [
          {
            "url": "https:\/\/product.test.sitejabber.com\/6486W.jpg"
          }
        ],
        "attributes": [],
        "num_reviews": 0,
        "average_rating": 0,
        "created": "2021/06/18 14:52:21",
        "createdRFC": "2021-06-18T14:52:21+00:00"
      },
      "author": {
        "username": "test",
        "firstName": "Test",
        "lastName": "L",
        "thumbnail": "https:\/\/www.sitejabber.com\/img\/profile-default%402x.png",
        "profilePage": "https:\/\/www.sitejabber.com\/users\/test",
        "numReviews": 1,
        "numHelpfulVotes": 1,
        "user_photo": null
      }
    }
  ],
  "count": 10,
  "start": 0,
  "sku": "6486W",
  "success": true
}
```

This endpoint retrieves all product questions.

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/product/questions`

### Query parameters

Parameter | Default | Description
--------- | ------- | -----------
start | 0 | starting offset
count | 10 | number of questions to be included (max 100)
sku | null | search questions by the given product sku
filter | null | PENDING/PUBLISHED/REMOVED, defaults to non removed questions
order | DESC | ASC/DESC order of the questions, ascending or descending on the creation date
