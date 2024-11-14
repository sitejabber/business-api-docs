---
title: API Reference

language_tabs:
  - shell
  - php

includes:
  - errors

search: true
---

# Introduction

Welcome to the home of Sitejabber's API documentation. Here you will find all required details on our APIs, including accessible objects, request formats, authentication methods, and error codes. If you have any additional questions, please email biz@sitejabber.com

# Schema Definition

Definition of the schema returned in JSON by the API endpoints.

Login Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
token | String | No | Token used in subsequent calls as user identifier
expire | DateTime | No | When the token will expire (typically after 6 months)
user | User object | No | User logged in into the system

Url Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
name | String | No | Name of the business
urlAddress | String | No | Url of the site
displayAddress | String | No | Url of the site without http://
urlProfilePage | String | No | Url of the site's profile page
averageRating | Array | No | Array of Rating object
numReviews | Array | No | Array of NumReviews object
phone | String | Yes | Phone of the site
email | String | Yes | Email of the site
address | Address object | No | Address of the site

Address Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
streetAddress | String | Yes | Street address
streetAddress2 | String | Yes | Street address second line
city | String | Yes | City
state | String | Yes | State
postalCode | String | Yes | Postal code
country | String | Yes | Country
completeAddress | String | Yes | All fields defining the complete address

NumReviews Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
type | String | No | Possible values: total, fiveStars, fourStars, threeStars, twoStars, oneStar
rating | Integer | No | Number of reviews

ReviewImage Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
caption | String | No | Caption of the image
original | String | No | Url of the image original size
normal | String | No | Url of the image normal size, max width 600px
large | String | No | Url of the image thumbnail large size 160x160
small | String | No | Url of the image thumbnail small size 96x96
created | DateTime | No | Creation date of the image
createdRFC | DateTime | No | Same as created but in format RFC 3339

Review Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
reviewNo | Integer | No | Review number, identifier
rating | Array | No | Array of Rating object
title | String | No | Title for the review
content | String | No | Content for the review
tip | String | Yes | Tip for the review
order_id | String | Yes | Order ID for the review
images | ReviewImage | Yes | Array of customer review images
positive_votes | Integer | No | Number of positive votes for the review
negative_votes | Integer | No | Number of negative votes for the review
created | DateTime/String | No | Review creation date
createdRFC | DateTime/String | No | Same as created but in format RFC 3339
published | DateTime/String | No | If the review is not yet published, it'll contain the string pending
publishedRFC | DateTime/String | No | Same as published but in format RFC 3339
edited | DateTime | Yes | DateTime the review was edited
editedRFC | DateTime | Yes | Same as edited but in format RFC 3339
removedRFC | DateTime | Yes | DateTime the review was removed in format RFC 3339 (only available if the review is removed)
updated_for | Review object | Yes | If this is an updated review, this will contain the original review
source | String | Yes | Only available for solicited reviews, indicates the source, can be one of the following: BCC, CSV, WEBHOOK, CHECKOUT_WIDGET, OTHER
datasource | String | Yes | Indicates the 3rd party data source (check the data sources section)
labels | Array | Yes | Array of labels
author | User object | No | Author of the review

Rating Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
type | String | No | Possible values: overall, service, value, shipping, returns, quality
rating | Float | No | Float value between 1 and 5

User Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
username | String | No | Username of the user
firstName | String | No | First name of the user
lastName | String | No | First letter of last name of the user
thumbnail | String | No | Relative path of the user's thumbnail image
profilePage | String | No | Url of the user's profile page
numReviews | Integer | No | Number of reviews written by the user
numHelpfulVotes | Integer | No | Number of helpful votes received
email | String | Yes | Only available for solicited reviews and when the email of the user was provided by the business

Comment Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
reviewNo | Integer | No | Review number, identifier
content | String | No | Content of the comment
num_votes | Integer | No | Number of votes received
activated | Boolean | No | 0 - not activated, 1 - activated
created | DateTime | No | DateTime the comment was created
createdRFC | DateTime | No | Same as created but in format RFC 3339
modified | DateTime | No | DateTime the comment was modified
modifiedRFC | DateTime | No | Same as modified but in format RFC 3339
published | DateTime | No | DateTime the comment was published
publishedRFC | DateTime | No | Same as published but in format RFC 3339
datasource | String | Yes | Indicates the 3rd party data source (check the data sources section)
author | User object | No | Author of the comment

Message Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
subject | String | No | Subject of the message
body | String | No | Body of the message
review | Review object | Yes | Review this message belongs to, if any
created | DateTime | No | Creation date of the message
createdRFC | DateTime | No | Same as created but in format RFC 3339
recipient | User object | No | User who received the message
sender | User object | No | User who sent the message

Partner Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
url | String | No | Url link to access the requested review page
hash | String | No | Hash identifier for the requested review page
expire | DateTime | No | When the link will expire

Product Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
id | Integer | No | Internal product ID
sku | String | No | SKU of the product
item_group | String | Yes | Used to group similar products together
gtin | String | Yes | GTIN of the product
mpn | String | Yes | MPN of the product
brand | String | Yes | Brand of the product
title | String | Yes | Title of the product
description | String | Yes | Description of the product
categories | ProductCategory object | Yes | Product categories
price | Float | Yes | Price of the product
retail_price | Float | Yes | Retail price of the product
currency | String | Yes | Currency of the product
product_link | String | Yes | Url link to the product's page
images | ProductImage object | Yes | Product images
attributes | ProductAttribute object | Yes | Customer attributes
num_reviews | Integer | No | Number of product reviews
average_rating | Float | No | Average rating of the product reviews
created | DateTime | No | Creation date of the product
createdRFC | DateTime | No | Same as created but in format RFC 3339

ProductImage Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
caption | String | No | Caption of the image
original | String | No | Url of the image original size
normal | String | No | Url of the image normal size, max width 600px
large | String | No | Url of the image thumbnail large size 160x160
small | String | No | Url of the image thumbnail small size 96x96
created | DateTime | No | Creation date of the image
createdRFC | DateTime | No | Same as created but in format RFC 3339

ProductReview Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
id | Integer | No | Internal product review ID
title | String | No | Title of the review
content | String | No | Content of the review
rating | Integer | No | Rating of the review
order_id | String | Yes | Order number for the review
user | User object | No | Author of the review
user_location | String | Yes | Location of the user
attributes | ProductAttribute | Yes | Custom attributes
images | ProductImage | Yes | Array of customer product images
solicited | Integer | No | Defines if the review was solicited or not, values are Yes/No
votes | Integer | No | Number of votes
num_positive_votes | Integer | No | Number of positive votes
num_negative_votes | Integer | No | Number of negative votes
published | DateTime | No | Publication date of the product
publishedRFC | DateTime | No | Same as published but in format RFC 3339
created | DateTime | No | Creation date of the product
createdRFC | DateTime | No | Same as created but in format RFC 3339
product | Product object | No | Product of the review
removedRFC | DateTime | Yes | DateTime the product review was removed in format RFC 3339 (only available if the product review is removed)

All responses includes the Status object

Status Object

Name | Type | Optional | Description
--------- | ------- | ----------- | -----------
status | String | No | OK if everything went good, ERROR if there was an error processing the request
success | Boolean | No | true or false
errorCode | Integer | Yes | Error code, only present when status is ERROR
errorReason | String | Yes | Error message, only present when status is ERROR

Data Sources

The Sitejabber API uses the following codes for the available external data sources:

Datasource Code | Description
----------------|------------
bbb | Better Business Bureau
facebook	| Facebook
lsa | Google Local Services
google | Google My Business
productreview | ProductReview
resellerratings | ResellerRatings
reviewsio | Reviews.io
trustpilot | Trustpilot
yelp | Yelp

# Authentication

> To authorize, use this code:

```shell
curl -d "email=myemail&password=mypassword" "https://api.sitejabber.com/v1/login?client_token=myapikey"
```

```php
<?php
$post = [
	'email' => 'myemail',
	'password' => 'mypassword'
];
$url = 'https://api.sitejabber.com/v1/login?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
?>
```

> The above command returns (Login Object) JSON structured like this:

```json
{
  "token": "5922b0ad07f849330de5af5c07fdd27ead7f4582",
  "expire": "2017-06-06 13:04:39",
  "user": {
     "username":"myusername",
     "firstName":"name",
     "lastName":"P",
     "thumbnail":"default_profile_photo.png",
     "profilePage":"https:\/\/www.sitejabber.com\/users\/myusername",
     "numReviews":0,
     "numHelpfulVotes":0
  },
  "status": "OK",
  "success": true
},
```

The token is to be used in subsequent calls

<aside class="notice">
You must replace <code>myapikey</code> with your API key.
</aside>

<aside class="notice">
Calling login method invalidates any previous generated user token.
</aside>

### HTTP request

`POST https://api.sitejabber.com/v1/login`

# Business Info

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

# Reviews

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

## Publish an unpublished review

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "review_no=2" "https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews/publish?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'review_no' => '2'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews/publish?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "success":true
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews/publish`

### Data

Parameter | Required | Description
--------- | ------- | -----------
review_no | true | number of review to be published

## Flag a review

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "review_no=2&reason=personal_info&message=Privacy%20policy%20violation" "https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews/flag?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'review_no' => '2',
	'reason' => 'personal_info',
	'message' => 'Privacy policy violation'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews/flag?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Status Object) JSON structured like this:

```json
{
   "status":"OK",
   "success":true
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews/flag`

### Data

Parameter | Required | Description
--------- | ------- | -----------
review_no | true | number of review to be flagged
reason | true | reason can be one of the following:<br />language, personal_info, personal_attack, second_hand, another_biz, other.<br /><br />language: Review contains profanity, lewdness, or bigotry<br />personal_info: Review contains personal information<br />personal_attack: Review contains personal attacks<br />second_hand: Review describes second-hand experience<br />another_biz: Review was intended for another business<br />other: Other
message | true | feedback message explaining the reason

# Review Comments

## Get review comments

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Array of Comments Object) JSON structured like this:

```json
{  
   "comments":[  
      {  
         "reviewNo":12,
         "content":"my new comment",
         "num_votes":0,
         "activated":1,
         "created":"2016\/01\/25 06:31:47",
         "createdRFC":"2016\/01\/25T06:31:47-07:00",
         "modified":"2016\/01\/25 06:31:47",
         "modifiedRFC":"2016\/01\/25T06:31:47-07:00",
         "published":"2016\/01\/25 06:31:47",
         "publishedRFC":"2016\/01\/25T06:31:47-07:00",
         "author":{  
            "username":"user123",
            "firstName":"John",
            "lastName":"D",
            "thumbnail":"users/user123/thumbnail123.jpg",
            "profilePage":"https://www.sitejabber.com/users/user123",
            "numReviews":0,
            "numHelpfulVotes":0
         }
      },
      {
         "reviewNo":132,
         "content":"other comment",
         "num_votes":3,
         "activated":1,
         "created":"2016\/01\/25 06:31:47",
         "createdRFC":"2016\/01\/25T06:31:47-07:00",
         "modified":"2016\/01\/25 06:31:47",
         "modifiedRFC":"2016\/01\/25T06:31:47-07:00",
         "published":"2016\/01\/25 06:31:47",
         "publishedRFC":"2016\/01\/25T06:31:47-07:00",
         "author":{  
            "username":"user345",
            "firstName":"Mary",
            "lastName":"A",
            "thumbnail":"users/user345/thumbnail345.jpg",
            "profilePage":"https://www.sitejabber.com/users/user345",
            "numReviews":0,
            "numHelpfulVotes":0
         }
      }
   ],
   "count":2,
   "start":0,
   "status":"OK",
   "success":true
}
```

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments`

### Query parameters

Parameter | Default | Description
--------- | ------- | -----------
review_no | null | number of review to fetch comments from
start | 0 | starting offset
count | 10 | number of comments to be included (max 100)
date_from | null | start date in format (yyyy-mm-dd hh:mm:ss) [hh:mm:ss] is optional
date_to | null | end date in format (yyyy-mm-dd hh:mm:ss) [hh:mm:ss] is optional
updated | false | returns only updated comments (0 or 1)
deleted | false | returns only deleted comments (0 or 1)
datasources | false | include comments from specified comma separated data sources (check the data sources section)

## Add comment to review

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "review_no=2&text=my%20new%20comment" "https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments/add?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'review_no' => '2',
	'text' => 'my new comment'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments/add?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Status Object) JSON structured like this:

```json
{
   "status":"OK",
   "success":true
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments/add`

### Data

Parameter | Required | Description
--------- | ------- | -----------
review_no | true | number of review to which comment will be added
text | true | text of the comment

# Resolution Attempts

## Send resolution message to user

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "review_no=2&body=my%20new%20message" "https://api.sitejabber.com/v1/businesses/yourdomain.com/resolution/send?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'review_no' => '2',
	'body' => 'my new message'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/resolution/send?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Status Object) JSON structured like this:

```json
{
   "status":"OK",
   "success":true
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/resolution/send`

### Data

Parameter | Required | Description
--------- | ------- | -----------
review_no | true | number of review whose author will receive a message
username | true | author that will receive a message
body | true | content of the message

<aside class="notice">
You only need to specify review_no or username
</aside>

# Messages

## Get messages

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/yourdomain.com/messages?client_token=myapikey&username=user"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/messages?client_token=myapikey&username=user';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Array of Message Object) JSON structured like this:

```json
{
   "messages":[  
      {  
         "subject": "Re: Business - 348289THX",
         "body": "My new message4",
         "review": null,
         "created": "2017\/07\/10 12:45:44",
         "createdRFC": "2017\/07\/10T12:45:44-07:00",
         "recipient": {  
		    "username": "user123",
		    "firstName": "John",
		    "lastName": "D",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user123",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 },
         "sender": {  
		    "username": "user3",
		    "firstName": "John",
		    "lastName": "F",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user3",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 }
      },
      {  
         "subject": "Re: Business - 348289THX",
         "body": "My new message3",
         "review": null,
         "created": "2017\/07\/07 02:31:44",
		 "createdRFC": "2017\/07\/07T02:31:44-07:00",
         "recipient": {  
		    "username": "user123",
		    "firstName": "John",
		    "lastName": "D",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user123",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 },
         "sender": {
		    "username": "user3",
		    "firstName": "John",
		    "lastName": "F",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user3",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 }
      },
      {  
         "subject": "Re: Business - 348289THX",
         "body": "My new message2",
         "review": null,
         "created": "2017\/07\/05 11:07:31",
         "createdRFC": "2017\/07\/05T11:07:31-07:00",
         "recipient": {  
		    "username": "user123",
		    "firstName": "John",
		    "lastName": "D",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user123",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 },
         "sender": {
		    "username": "user3",
		    "firstName": "John",
		    "lastName": "F",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user3",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 }
      },
      {
         "subject": "Business - 348289THX",
         "body": "My new message1",
		  "review": {
			"reviewNo": 3,
			"rating": [
	          {
	            "type": "overall",
	            "rating": 2
	          },
	          {
	            "type": "service",
	            "rating": null
	          },
	          {
	            "type": "value",
	            "rating": null
	          },
	          {
	            "type": "shipping",
	            "rating": null
	          },
	          {
	            "type": "returns",
	            "rating": null
	          },
	          {
	            "type": "quality",
	            "rating": null
	          }
	        ],
	        "title": "Dissapointed",
	        "content": "Dissapointed.",
	        "tip": null,
	        "order_id": "348289THX",
	        "published": "2017/01/04 03:35:20",
	        "publishedRFC": "2017/01/04T03:35:20-07:00",
	        "edited": "",
	        "author": {
	          "username": "user123",
	          "firstName": "John",
	          "lastName": "D",
	          "thumbnail": "default_profile_photo.png",
	          "profilePage": "https://www.sitejabber.com/users/user123",
	          "numReviews": 0,
	          "numHelpfulVotes": 1
	        }
	      },
         "created": "2017\/06\/30 02:57:59",
		 "createdRFC": "2017\/06\/30T02:57:59-07:00",
         "recipient": {  
		    "username": "user123",
		    "firstName": "John",
		    "lastName": "D",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user123",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 },
         "sender":{  
		    "username": "user3",
		    "firstName": "John",
		    "lastName": "F",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user3",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 }
      }
   ],
   "count":4,
   "start":0,
   "status":"OK",
   "success":true
}
```

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/messages`

### Query parameters

Parameter | Default | Description
--------- | ------- | -----------
start | 0 | starting offset
count | 10 | number of messages to be included (max 100)
username | empty | get messages for specific user if given
folder | inbox | inbox/sent for received or sent messages
order | DESC | ASC/DESC order of the messages, ascending or descending

## Send message to user

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "review_no=2&subject=hello&body=my%20new%20message" "https://api.sitejabber.com/v1/businesses/yourdomain.com/message/send?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'review_no' => '2',
	'subject' => 'hello'
	'body' => 'my new message'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/message/send?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Status Object) JSON structured like this:

```json
{
   "status":"OK",
   "success":true
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/message/send`

### Data

Parameter | Required | Description
--------- | ------- | -----------
review_no | true | number of review whose author will receive a message
username | true | author that will receive a message
subject | true | subject of the message
body | true | content of the message

<aside class="notice">
You only need to specify review_no or username
</aside>

# Review Requests

## Create review request

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "email=test@test.com&order_id=XHS2854&order_date=2017-04-28&first_name=John&last_name=Doe" "https://api.sitejabber.com/v1/businesses/yourdomain.com/review/request/add?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'email' => 'test@test.com',
	'order_id' => 'XHS2854',
	'order_date' => '2017-04-28',
	'first_name' => 'John',
	'last_name' => 'Doe',
	'return_link' => 1
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/review/request/add?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Status Object) JSON structured like this:

```json
{
	"status":"OK",
	"success":true,
	"link":"https://www.sitejabber.com/requested-review/request-key"
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/review/request/add`

### Data

Parameter | Required | Description
--------- | ------- | -----------
email | true | email of the customer, required if phone is not provided
phone | true | phone of the customer, required if email is not provided
order_id | true | order id of the purchase
order_date | true | order date of the purchase in yyyy-mm-dd format
first_name | false | first name of the customer
last_name | false | last name of the customer
labels | false | comma separated labels to attach to the review after it's completed by the customer
location | false | business location identifier
language | false | language for the request
product_skus | false | product SKUs of the purchase (comma separated)
return_link | false | (1 => true, 0 => false), if true, returns the link to complete the review, and doesn't send the review request email

## Remove review request

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "email=test@test.com&order_id=XHS2854" "https://api.sitejabber.com/v1/businesses/yourdomain.com/review/request/remove?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'email' => 'test@test.com',
	'order_id' => 'XHS2854'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/review/request/remove?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns array of removed order ids along with (Status Object) JSON structured like this:

```json
{
	"removed_order_ids":[
		'XHS2854'
	],
	"status":"OK",
	"success":true
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/review/request/remove`

### Data

Parameter | Required | Description
--------- | ------- | -----------
email | true | email of the customer
order_id | false | order id of the purchase, if not specified all requests for the given email will be removed

# Partners

## Get write review link

Get the link to write a review for the given business

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/partners/yourdomain.com/write-link/get?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/partners/yourdomain.com/write-link/get?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Partner Object) JSON structured like this:

```json
{
   "url":"https:\/\/www.sitejabber.com\/requested-review\/?hash=efadba6a49",
   "hash":"efadba6a49",
   "expire":"2018\/01\/13 10:48:37",
   "status":"OK",
   "success":true
}
```

### HTTP request

`GET https://api.sitejabber.com/v1/partners/yourdomain.com/write-link/get`

<aside class="notice">
The url and hash keys will be valid until date in expire key
</aside>

## Get edit review link

Get the link to edit a review for the given user

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/partners/yourdomain.com/edit-link/get?client_token=myapikey&email=user@email.com"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/partners/yourdomain.com/edit-link/get?client_token=myapikey&email=user@email.com';

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
   "link":"https:\/\/www.sitejabber.com\/edit-review\/yourdomain.com\/1295",
   "status":"OK",
   "success":true
}
```

### HTTP request

`GET https://api.sitejabber.com/v1/partners/yourdomain.com/edit-link/get`

<aside class="notice">
User must still login to edit the review
</aside>

# Products

## Get products

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582"
https://api.sitejabber.com/v1/businesses/yourdomain.com/products?client_token=myapikey
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/products?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Array of Product Object) JSON structured like this:

```json
{
  "products": [
    {
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
  ],
  "count": 10,
  "start": 0,
  "query": null,
  "status": "OK",
  "success": true
}
```

This endpoint retrieves all products.

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/products`

### Query parameters

Parameter | Default | Description
--------- | ------- | -----------
start | 0 | starting offset
count | 10 | number of products to be included (max 100)
q | null | retrieve products matching given keyword
sku | null | retrieve the given product by sku
gtin | null | retrieve the given product by gtin
mpn | null | retrieve the given product by mpn
brand | null | retrieve products matching brand
categories | null | retrieve products in the given categories
price_range | null | retrieve products in the given prices [min],[max]
reviews_range | null | retrieve products with the given number of reviews [min],[max]
product_id | null | retrieve the given product ID

## Add product

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582"
-d "sku=4476&brand=sony&title=playstation&categories=games,ps3&price=129&attributes=pros:usability,automatic,control|cons:slow,big|user
%20experience:novice,expert" https://api.sitejabber.com/v1/businesses/yourdomain.com/products/add?client_token=myapikey
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$data = [
	'sku' => '4476',
	'brand' => 'sony',
	'title' => 'playstation',
	'categories' =>  'games,ps3',
	'price' => '129',
	'attributes => 'pros:usability,automatic,control|cons:slow,big|user experience:novice,expert'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/products/add?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
$res = curl_exec($ch);
curl_close($ch);
```

This endpoint adds a new product.

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/products/add`

### Post parameters

Parameter | Required | Description
--------- | ------- | -----------
sku | true | product sku
item_group | false | product item group
gtin | false | product gtin
mpn | false | product mpn
title | true | product title
description | false | product description
brand | false | product brand
categories | false | categories this product belongs to, comma separated
currency | false | product currency
price | false | product price
retail_price | false | product retail price
product_link | false | product link
image_url | false | product image url
attributes | false | custom attributes for the product

> Attributes format: attribute_name1;type;required:option1,option2,...,optionN|attribute_name2;type;required:option1,....|....|attribute_nameN;type;required:option1,...

## Remove product

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "product_id=32" https://api.sitejabber.com/v1/businesses/yourdomain.com/products/remove?client_token=myapikey
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$data = [
	'product_id' => '32'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/products/remove?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
$res = curl_exec($ch);
curl_close($ch);
```

This endpoint removes a product.

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/products/remove`

### Post parameters

Parameter | Required | Description
--------- | ------- | -----------
product_id| true | product ID

## Add product image

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "sku=4770&image=https://xyz.xyz/img/4770.jpg" \
https://api.sitejabber.com/v1/businesses/yourdomain.com/product/images/add?client_token=myapikey
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$data = [
	'sku' => '4770',
	'image' => 'https://xyz.xyz/img/4770.jpg'
];

$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/product/images/add?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
$res = curl_exec($ch);
curl_close($ch);
```

This endpoint updates the image url of an existing product.

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/product/images/add`

### Post parameters

Parameter | Required | Description
--------- | ------- | -----------
sku| true | product sku
image | true | image url

# Product Reviews

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

## Add product review

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -F "sku=26" -F "title=playstation" -F "content=very%20good" -F "rating=5" -F "caption1=my%20flowers" -F "caption2=more%20flowers" -F "image1=https://img.server.xyz/image.jpg" -F "image2=@/home/filename.jpg" "https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/add?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$data = [
	'sku' => '26',
	'title' => 'playstation',
	'content' =>  'very good',
	'rating' => '5',
	'image1' => curl_file_create('/home/filename.jpg', 'image/jpg', 'filename.jpg'),
	'caption1' => 'my flowers',
	'image2' => 'https://img.server.xyz/image.jpg',
	'caption2' => 'more flowers'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews/add?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Status Object) JSON structured like this:

```json
{
  "product_review": {
    "id": 26147,
    "title": "VERY VERY FUN",
    "content": "I bought 2 of these, we use them both everyday",
    "rating": 5,
    "order_id": "XYZ123",
    "user": {
      "username": "user123",
      "firstName": "John",
      "lastName": "D",
      "thumbnail": "profile-default@2x.png",
		"profilePage": "https://www.sitejabber.com/users/user123",
      "numReviews": 0,
      "numHelpfulVotes": 0
    },
    "user_location": null,
    "attributes": [],
	"images": [
      {
        "caption": "My flowers",
        "original": "https://www.sitejabber.com/img/products/26/picture_66.1617116820.jpg",
        "normal": "https://www.sitejabber.com/img/products/26/thumbnail_66_normal.1617116820.jpg",
        "large": "https://www.sitejabber.com/img/products/26/thumbnail_66_large.1617116820.jpg",
		"small": "https://www.sitejabber.com/img/products/26/thumbnail_66_small.1617116820.jpg",
        "created": "2020/03/30 08:07:00",
        "createdRFC": "2020-03-30T08:07:00-03:00"
      },
      {
        "caption": "More flowers",
        "original": "https://www.sitejabber.com/img/products/26/picture_67.1617116820.jpg",
        "normal": "https://www.sitejabber.com/img/products/26/thumbnail_67_normal.1617116820.jpg",
        "large": "https://www.sitejabber.com/img/products/26/thumbnail_67_large.1617116820.jpg",
		"small": "https://www.sitejabber.com/img/products/26/thumbnail_67_small.1617116820.jpg",
        "created": "2020/03/30 08:07:00",
        "createdRFC": "2020-03-30T08:07:00-03:00"
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
  "status": "OK",
  "success": true
}
```

<aside class="notice">
The data must be sent using multipart form data
</aside>

This endpoint adds a new product review.

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/add`

### Post parameters

Parameter | Required | Description
--------- | ------- | -----------
sku | true | product SKU
title | true | product review title
content | true | product review content
rating | true | product review rating
order_id | false | product review order id
first_name | false | first name of the user writing the review
last_name | false | last name of the user writing the review
email | false | email of the user writing the review
user_location | false | location of the user writing the review
location | false | business location identifier
attributes | false | values of attributes defined for the product
image{n} | false | can be used to send multiple images (image1, image2, ...., image{n}) it can be image binary data or url pointing to image file, the image are uploaded in the order specified
caption{n} | false | can be used to set a caption for the image (caption1, caption2, ...., caption{n})

## Add product review vote

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "review_id=22&vote=positive"
https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/vote?client_token=myapikey
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$data = [
	'review_id' => '21',
	'vote' => 'positive'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/vote?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, true);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($data));
$res = curl_exec($ch);
curl_close($ch);
```

This endpoint makes a new vote on the given product review.

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/vote`

### Post parameters

Parameter | Required | Description
--------- | ------- | -----------
review_id | true | product review ID
vote | true | type of vote (positive/negative)

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
      {
         "total": 2622,
         "average_rating": "4.43"
      }
  ],
  "success": true
}
```

This endpoint get the published product reviews stats (total and average rating).

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/product/reviews/stats`

# Product Review Requests

## Create product review request

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "email=test@test.com&product_sku=4457,4458,4459&order_id=XHS2854&order_date=2017-04-28&first_name=John&last_name=Doe" "https://api.sitejabber.com/v1/businesses/yourdomain.com/product/review/request/add?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'email' => 'test@test.com',
	'product_sku' => '4457,4458,4459',
	'order_id' => 'XHS2854',
	'order_date' => '2017-04-28',
	'first_name' => 'John',
	'last_name' => 'Doe'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/product/review/request/add?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Status Object) JSON structured like this:

```json
{
	"status":"OK",
	"success":true,
	"link": "https://www.sitejabber.com/requested-product-review/62bf646fdfe73",
    "links": {
      "4457": "https://www.sitejabber.com/requested-product-review/62bf646fdfe73",
      "6749": "https://www.sitejabber.com/requested-product-review/62bf6470ba8b1",
      "6574": "https://www.sitejabber.com/requested-product-review/62bf64718fb36"
    }
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/product/review/request/add`

### Data

Parameter | Required | Description
--------- | ------- | -----------
email | true | email of the customer
product_skus | true | product SKUs of the purchase (comma separated)
order_id | true | order id of the purchase
order_date | true | order date of the purchase in yyyy-mm-dd format
first_name | false | first name of the customer
last_name | false | last name of the customer
location | false | business location identifier
language | false | language for the request
return_link | false | (1 => true, 0 => false), if true, returns the link to complete the products review, and doesn't send the products review requests emails

## Remove product review request

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "email=test@test.com&product_sku=4457&order_id=XHS2854" "https://api.sitejabber.com/v1/businesses/yourdomain.com/product/review/request/remove?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'email' => 'test@test.com',
	'product_sku' => '4457',
	'order_id' => 'XHS2854'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/product/review/request/remove?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns array of removed order ids along with (Status Object) JSON structured like this:

```json
{
	"removed_order_ids":[
		'XHS2854'
	],
	"status":"OK",
	"success":true
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/product/review/request/remove`

### Data

Parameter | Required | Description
--------- | ------- | -----------
email | true | email of the customer
product_sku | false | product sku of the purchase, if not specified all request for the given email will be removed
order_id | false | order id of the purchase, if not specified all requests for the given email will be removed

# Privacy

## Access customer information

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "email=john@example.com" "https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/access?client_token=myapikey&email=john@example.com"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/access?client_token=myapikey&email=john@example.com';


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
   "categories": [
     "Identifiers": {,
        "name": "John Doe",
        "email": "john@example.com",
        "address": "N/A",
        "SSN": "N/A",
        "accountName": "N/A",
        "passportNumber": "N/A",
        "driversLicense": "N/A",
        "alias": "John Doe",
        "uniqueIdentifier": "foobar",
        "onlineIdentifier": "foobar",
        "ipAddress": "8.8.8.256"
      },
      "Customer records information": {
        "name": "John Doe"
        "address": "N/A",
        "phone": "456-xyz-4564",
        "signature": "N/A",
        "SSN": "N/A",
        "passportNumber": "N/A",
        "driversLicense": "N/A",
        "stateCard": "N/A",
        "insurance": "N/A",
        "education": "N/A",
        "employment": "N/A",
        "bankAccountNumber": "N/A",
        "creditDebitCards": "N/A",
        "medicalInfo": "N/A",
        "healthInsurance": "N/A"
      },
      "Protected classification info (race, gender)": "N/A",
      "Commercial info": {
        "productsOrServicesPurchased": [
          {
            "website": "example.com",
            "title": "TV 65\" QLED Smart 4k",
            "orderId": 'XYZ-1',
            "orderDate": '2017-05-01T16:15:14-03:00'
          },
          {
            "website": "example.com",
            "title": "Mini Home Theater Sound Bar System",
            "orderId": 'XYZ-2',
            "orderDate": '2017-05-01T16:15:14-03:00'
          }
        ]
      },
      "Biometric info": "N/A",
      "Internet or electronic activity": {
        "browsingHistory": "N/A",
        "searchHistory": "N/A",
        "consumerInteractions": [
          "example.com"
        ]
      },
      "Geolocation data": "N/A",
      "Audio, electric, visual, thermal, olfactory": "N/A",
      "Professional or employment related": "N/A",
      "Education info": "N/A",
      "Inferences": "N/A",
   ],
   "status":"OK",
   "success":true
}
```

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/access`


### Query parameters

Parameter | Required | Description
--------- | ------- | -----------
email | true | user's email


<aside class="notice">
This call only works if the customer's email has been provided by the given business
</aside>

## Remove customer information

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "email=john@example.com" "https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/remove?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'email' => 'john@example.com'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/remove?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
curl_setopt($ch, CURLOPT_POST, TRUE);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query($post));
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "success":true
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/remove`

### Data

Parameter | Required | Description
--------- | ------- | -----------
email | true | user's email

<aside class="notice">
This call only works if the customer's email has been provided by the given business
</aside>

# Rate Limit

You are allowed 1000 calls per hour for each unique user token.

You can't make more than 10 calls in a 10 second window, and you can't make more than 1000 calls in a 1 hour window.

If you exceed your rate limit for a given endpoint, you'll get a 429 "Too many requests" error code.
