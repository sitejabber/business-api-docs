## Get edit review link

Get the link to edit a review for the given user

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/partners/yourdomain.com/edit-link/get?client_token=myapikey&email=user@email.com"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/partners/yourdomain.com/edit-link/get?client_token=myapikey&email=user@email.com';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns JSON structured like this:

```json
{
   "link":"https:\/\/www.sitejabber.com\/edit-review\/yourdomain.com\/1295",
   "status":"OK",
   "success":true
}
```

### HTTP request

`GET https://api.sitejabber.com/v1/partners/yourdomain.com/edit-link/get`

<aside class="notice">
User must still login to edit the review
</aside>

# Products
