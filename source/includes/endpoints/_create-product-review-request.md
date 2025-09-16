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
