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
