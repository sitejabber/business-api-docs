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
