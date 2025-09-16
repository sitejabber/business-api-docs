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
