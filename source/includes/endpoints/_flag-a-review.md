## Flag a review

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "review_no=2&reason=personal_info&message=Privacy%20policy%20violation" "https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews/flag?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$post = [
	'review_no' => '2',
	'reason' => 'personal_info',
	'message' => 'Privacy policy violation'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews/flag?client_token=myapikey';

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

`POST https://api.sitejabber.com/v1/businesses/yourdomain.com/reviews/flag`

### Data

Parameter | Required | Description
--------- | ------- | -----------
review_no | true | number of review to be flagged
reason | true | reason can be one of the following:<br />language, personal_info, personal_attack, second_hand, another_biz, other.<br /><br />language: Review contains profanity, lewdness, or bigotry<br />personal_info: Review contains personal information<br />personal_attack: Review contains personal attacks<br />second_hand: Review describes second-hand experience<br />another_biz: Review was intended for another business<br />other: Other
message | true | feedback message explaining the reason

# Review Comments
