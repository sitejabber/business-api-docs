## Get write review link

Get the link to write a review for the given business

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/partners/yourdomain.com/write-link/get?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/partners/yourdomain.com/write-link/get?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Partner Object) JSON structured like this:

```json
{
   "url":"https:\/\/www.sitejabber.com\/requested-review\/?hash=efadba6a49",
   "hash":"efadba6a49",
   "expire":"2018\/01\/13 10:48:37",
   "status":"OK",
   "success":true
}
```

### HTTP request

`GET https://api.sitejabber.com/v1/partners/yourdomain.com/write-link/get`

<aside class="notice">
The url and hash keys will be valid until date in expire key
</aside>
