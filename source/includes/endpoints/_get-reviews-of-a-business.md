## Get reviews of a business

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Array of Review Object) JSON structured like this:

```json
[
  {
	"reviewNo" : "3",
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
	"updated_for" : {
	    "reviewNo" : 1,
	    "rating" : [
			{
				"type" : "overall",
				"rating" : 3
			},
			{
				"type" : "service",
				"rating" : null
			},
			{
				"type" : "value",
				"rating" : null
			},
			{
				"type" : "shipping",
				"rating" : null
			},
			{
				"type" : "returns",
				"rating" : null
			},
			{
				"type" : "quality",
				"rating" : null
			}
		],
		"title" : "Best business ever ever!",
		"content" : "Everyone should buy in this site.",
		"tip" : null,
		"order_id": "XHD39545",
		"images": [],
		"created": "2016/04/25 04:07:38",
		"createdRFC": "2016/04/25T04:07:38-07:00",
		"published": "2016/04/25 04:07:38",
		"publishedRFC": "2016/04/25T04:07:38-07:00",
		"edited": "",
		"labels": [],
		"author": {
			"username" : "user123",
			"firstName" : "John",
			"lastName" : "D",
			"thumbnail" : "users/user123/thumbnail123.jpg",
			"profilePage" : "https://www.sitejabber.com/users/user123",
			"numReviews" : "10",
			"numHelpfulVotes" : "5"
		},
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
  {
	"reviewNo" : "4",
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
	"order_id" : "XHD39546",
	"images" : [],
	"positive_votes" : 2,
	"negative_votes" : 0,
	"created" : "2015-11-06 12:01:45",
	"createdRFC" : "2015-11-06T12:01:45-07:00",
	"published" : "2015-11-07 12:01:45",
	"publishedRFC" : "2015-11-07T12:01:45-07:00",
    "source" : "CHECKOUT_WIDGET",
	"labels" : [],
	"author" : {
		"username" : "user123",
		"firstName" : "John",
		"lastName" : "D",
		"thumbnail" : "users/user123/thumbnail123.jpg",
		"profilePage" : "https://www.sitejabber.com/users/user123",
		"numReviews" : "10",
		"numHelpfulVotes" : "5",
        "email" : "john@example.com"
	}
  }
]
```

This endpoint retrieves all reviews.

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews`

### Query parameters

Parameter | Default | Description
--------- | ------- | -----------
start | 0 | starting offset
count | 10 | number of reviews to be included (max 100)
q | null | search reviews by keyword (title, content)
labels | null | search reviews with the specified comma separated labels
date_from | null | start date in format (yyyy-mm-dd hh:mm:ss) [hh:mm:ss] is optional
date_to | null | end date in format (yyyy-mm-dd hh:mm:ss) [hh:mm:ss] is optional
unpublished | false | include unpublished reviews (0 or 1)
updated | false | search updated reviews (0 or 1)
deleted | false | returns only deleted reviews (0 or 1)
datasources | false | include reviews from specified comma separated data sources (check the data sources section)
order | DESC | ASC/DESC order of the reviews, ascending or descending on the creation date
