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
