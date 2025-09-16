## Add comment to review

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "review_no=2&text=my%20new%20comment" "https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments/add?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'review_no' => '2',
	'text' => 'my new comment'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments/add?client_token=myapikey';

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

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments/add`

### Data

Parameter | Required | Description
--------- | ------- | -----------
review_no | true | number of review to which comment will be added
text | true | text of the comment

# Resolution Attempts
