## Access customer information

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" -d "email=john@example.com" "https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/access?client_token=myapikey&email=john@example.com"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/access?client_token=myapikey&email=john@example.com';


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
   "categories": [
     "Identifiers": {,
        "name": "John Doe",
        "email": "john@example.com",
        "address": "N/A",
        "SSN": "N/A",
        "accountName": "N/A",
        "passportNumber": "N/A",
        "driversLicense": "N/A",
        "alias": "John Doe",
        "uniqueIdentifier": "foobar",
        "onlineIdentifier": "foobar",
        "ipAddress": "8.8.8.256"
      },
      "Customer records information": {
        "name": "John Doe"
        "address": "N/A",
        "phone": "456-xyz-4564",
        "signature": "N/A",
        "SSN": "N/A",
        "passportNumber": "N/A",
        "driversLicense": "N/A",
        "stateCard": "N/A",
        "insurance": "N/A",
        "education": "N/A",
        "employment": "N/A",
        "bankAccountNumber": "N/A",
        "creditDebitCards": "N/A",
        "medicalInfo": "N/A",
        "healthInsurance": "N/A"
      },
      "Protected classification info (race, gender)": "N/A",
      "Commercial info": {
        "productsOrServicesPurchased": [
          {
            "website": "example.com",
            "title": "TV 65\" QLED Smart 4k",
            "orderId": 'XYZ-1',
            "orderDate": '2017-05-01T16:15:14-03:00'
          },
          {
            "website": "example.com",
            "title": "Mini Home Theater Sound Bar System",
            "orderId": 'XYZ-2',
            "orderDate": '2017-05-01T16:15:14-03:00'
          }
        ]
      },
      "Biometric info": "N/A",
      "Internet or electronic activity": {
        "browsingHistory": "N/A",
        "searchHistory": "N/A",
        "consumerInteractions": [
          "example.com"
        ]
      },
      "Geolocation data": "N/A",
      "Audio, electric, visual, thermal, olfactory": "N/A",
      "Professional or employment related": "N/A",
      "Education info": "N/A",
      "Inferences": "N/A",
   ],
   "status":"OK",
   "success":true
}
```

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/privacy/access`


### Query parameters

Parameter | Required | Description
--------- | ------- | -----------
email | true | user's email


<aside class="notice">
This call only works if the customer's email has been provided by the given business
</aside>
