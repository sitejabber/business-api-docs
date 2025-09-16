## Get a review of a business

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/yourdomain.com/review?client_token=myapikey&review_no=1"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/review?client_token=myapikey&review_no=1';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns Review Object JSON structured like this:

```json
{
  "review" : {
	"reviewNo" : "1",
	"rating" : [
		{
			"type" : "overall",
			"rating" : "5"
		},
		{
			"type" : "service",
			"rating" : "5"
		},
		{
			"type" : "value",
			"rating" : "4"
		},
		{
			"type" : "shipping",
			"rating" : "5"
		},
		{
			"type" : "returns",
			"rating" : "5"
		},
		{
			"type" : "quality",
			"rating" : "5"
		}
	],
	"title" : "Best business ever!",
	"content" : "Everyone should buy from here.",
	"tip" : "Don't forget to use coupons at check out.",
	"order_id" : "XHD39545",
	"images": [
      {
        "caption": "",
        "original": "https://www.sitejabber.com/img/urls/34722/picture_313671.1615306739.jpg",
        "normal": "https://www.sitejabber.com/img/urls/34722/thumbnail_313671_normal.1615306739.jpg",
        "large": "https://www.sitejabber.com/img/urls/34722/thumbnail_313671_large.1615306739.jpg",
		 "small": "https://www.sitejabber.com/img/urls/34722/thumbnail_313671_small.1615306739.jpg",
		 "created": "2020/02/18 08:19:04",
		 "createdRFC": "2020/02/18T08:19:04-07:00"
      },
      {
        "caption": "",
        "original": "https://www.sitejabber.com/img/urls/34722/picture_313672.1615306741.jpg",
        "normal": "https://www.sitejabber.com/img/urls/34722/thumbnail_313672_normal.1615306740.jpg",
        "large": "https://www.sitejabber.com/img/urls/34722/thumbnail_313672_large.1615306741.jpg",
		 "small": "https://www.sitejabber.com/img/urls/34722/thumbnail_313672_small.1615306741.jpg",
		 "created": "2020/02/19 08:19:04",
		 "createdRFC": "2020/02/19T08:19:04-07:00"
      }
	],
	"positive_votes" : 2,
	"negative_votes" : 0,
	"created" : "2015-11-06 12:01:45",
	"createdRFC" : "2015-11-06T12:01:45-07:00",
	"published" : "2015-11-06 12:01:45",
	"publishedRFC" : "2015-11-06T12:01:45-07:00",
	"edited" : "",
	"labels" : [],
	"author" : {
		"username" : "user123",
		"firstName" : "John",
		"lastName" : "D",
		"thumbnail" : "users/user123/thumbnail123.jpg",
		"profilePage" : "https://www.sitejabber.com/users/user123",
		"numReviews" : "10",
		"numHelpfulVotes" : "5"
	}
  },
  "status":"OK",
  "success":true
}
```

This endpoint retrieves the specified review.

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/review`

### Query parameters

Parameter | Required | Description
--------- | ------- | -----------
review_no | true | number of review to be retrieved
