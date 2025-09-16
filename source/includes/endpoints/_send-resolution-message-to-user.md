## Send resolution message to user

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "review_no=2&body=my%20new%20message" "https://api.sitejabber.com/v1/businesses/yourdomain.com/resolution/send?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'review_no' => '2',
	'body' => 'my new message'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/resolution/send?client_token=myapikey';

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
   "success":true
}
```

### HTTP request

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/resolution/send`

### Data

Parameter | Required | Description
--------- | ------- | -----------
review_no | true | number of review whose author will receive a message
username | true | author that will receive a message
body | true | content of the message

<aside class="notice">
You only need to specify review_no or username
</aside>

# Messages
