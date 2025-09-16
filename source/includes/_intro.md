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
source | String | Yes | Only available for solicited reviews, indicates the source, can be one of the following: BCC, CSV, WEBHOOK, CHECKOUT_WIDGET, API, WEB, QUICK_REQUEST, OTHER
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
