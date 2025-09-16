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
