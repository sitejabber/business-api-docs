## Get review comments

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments?client_token=myapikey"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments?client_token=myapikey';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Array of Comments Object) JSON structured like this:

```json
{  
   "comments":[  
      {  
         "reviewNo":12,
         "content":"my new comment",
         "num_votes":0,
         "activated":1,
         "created":"2016\/01\/25 06:31:47",
         "createdRFC":"2016\/01\/25T06:31:47-07:00",
         "modified":"2016\/01\/25 06:31:47",
         "modifiedRFC":"2016\/01\/25T06:31:47-07:00",
         "published":"2016\/01\/25 06:31:47",
         "publishedRFC":"2016\/01\/25T06:31:47-07:00",
         "author":{  
            "username":"user123",
            "firstName":"John",
            "lastName":"D",
            "thumbnail":"users/user123/thumbnail123.jpg",
            "profilePage":"https://www.sitejabber.com/users/user123",
            "numReviews":0,
            "numHelpfulVotes":0
         }
      },
      {
         "reviewNo":132,
         "content":"other comment",
         "num_votes":3,
         "activated":1,
         "created":"2016\/01\/25 06:31:47",
         "createdRFC":"2016\/01\/25T06:31:47-07:00",
         "modified":"2016\/01\/25 06:31:47",
         "modifiedRFC":"2016\/01\/25T06:31:47-07:00",
         "published":"2016\/01\/25 06:31:47",
         "publishedRFC":"2016\/01\/25T06:31:47-07:00",
         "author":{  
            "username":"user345",
            "firstName":"Mary",
            "lastName":"A",
            "thumbnail":"users/user345/thumbnail345.jpg",
            "profilePage":"https://www.sitejabber.com/users/user345",
            "numReviews":0,
            "numHelpfulVotes":0
         }
      }
   ],
   "count":2,
   "start":0,
   "status":"OK",
   "success":true
}
```

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/review/comments`

### Query parameters

Parameter | Default | Description
--------- | ------- | -----------
review_no | null | number of review to fetch comments from
start | 0 | starting offset
count | 10 | number of comments to be included (max 100)
date_from | null | start date in format (yyyy-mm-dd hh:mm:ss) [hh:mm:ss] is optional
date_to | null | end date in format (yyyy-mm-dd hh:mm:ss) [hh:mm:ss] is optional
updated | false | returns only updated comments (0 or 1)
deleted | false | returns only deleted comments (0 or 1)
datasources | false | include comments from specified comma separated data sources (check the data sources section)
