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
