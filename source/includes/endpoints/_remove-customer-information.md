## Remove customer information

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "email=john@example.com" "https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/remove?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'email' => 'john@example.com'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/remove?client_token=myapikey';

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

> The above command returns JSON structured like this:

```json
{
   "status":"OK",
   "success":true
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/remove`

### Data

Parameter | Required | Description
--------- | ------- | -----------
email | true | user's email

<aside class="notice">
This call only works if the customer's email has been provided by the given business
</aside>

# Rate Limit

You are allowed 1000 calls per hour for each unique user token.

You can't make more than 10 calls in a 10 second window, and you can't make more than 1000 calls in a 1 hour window.

If you exceed your rate limit for a given endpoint, you'll get a 429 "Too many requests" error code.
