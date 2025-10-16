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

# Product Questions
