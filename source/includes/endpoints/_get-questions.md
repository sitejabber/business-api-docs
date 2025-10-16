## Get questions

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/yourdomain.com/questions?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/questions?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Array of Question Object) JSON structured like this:

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
      "business":"yourdomain.com",
      "content": "Actually I have ordered from this company 2 times and am getting ready to place another order. The service, delivery and quality have all been great. I am not sure why others have had issues, but I have no complaints.",
      "created": "2013/05/13 07:21:04",
      "createdRFC": "2013-05-13T07:21:04+00:00",
      "num_answers": 1,
      "slug": "actually-i-have-ordered-from-this-company-2-times-and-am-getting-ready-to-place-another-order-the-service-delivery-and-quality-have-all-been-great-i-am-not-sure-why-others-have-had-issues-but-i-have-no-complaints-1",
      "sum_votes": 0,
      "answers": [
        {
          "content": "For the Hi-Lo effect can I use the 17\" square?",
          "created": "2013/05/13 07:08:16",
          "createdRFC": "2013-05-13T07:08:16+00:00",
          "num_votes": 0,
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
  "count": 1,
  "start": 0,
  "query": null,
  "success": true
}
```

This endpoint retrieves all questions.

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/questions`

### Query parameters

Parameter | Default | Description
--------- | ------- | -----------
start | 0 | starting offset
count | 10 | number of questions to be included (max 100)
order | DESC | ASC/DESC order of the questions, ascending or descending on the creation date

# Reviews
