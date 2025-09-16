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
