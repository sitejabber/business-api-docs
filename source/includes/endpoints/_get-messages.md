## Get messages

```shell
curl -H "user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582" "https://api.sitejabber.com/v1/businesses/yourdomain.com/messages?client_token=myapikey&username=user"
```

```php
<?php
$header = [
	'user_token: 5922b0ad07f849330de5af5c07fdd27ead7f4582'
];
$url = 'https://api.sitejabber.com/v1/businesses/yourdomain.com/messages?client_token=myapikey&username=user';

$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
curl_setopt($ch, CURLOPT_HTTPHEADER, $header);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
$res = curl_exec($ch);
curl_close($ch);
```

> The above command returns (Array of Message Object) JSON structured like this:

```json
{
   "messages":[  
      {  
         "subject": "Re: Business - 348289THX",
         "body": "My new message4",
         "review": null,
         "created": "2017\/07\/10 12:45:44",
         "createdRFC": "2017\/07\/10T12:45:44-07:00",
         "recipient": {  
		    "username": "user123",
		    "firstName": "John",
		    "lastName": "D",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user123",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 },
         "sender": {  
		    "username": "user3",
		    "firstName": "John",
		    "lastName": "F",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user3",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 }
      },
      {  
         "subject": "Re: Business - 348289THX",
         "body": "My new message3",
         "review": null,
         "created": "2017\/07\/07 02:31:44",
		 "createdRFC": "2017\/07\/07T02:31:44-07:00",
         "recipient": {  
		    "username": "user123",
		    "firstName": "John",
		    "lastName": "D",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user123",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 },
         "sender": {
		    "username": "user3",
		    "firstName": "John",
		    "lastName": "F",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user3",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 }
      },
      {  
         "subject": "Re: Business - 348289THX",
         "body": "My new message2",
         "review": null,
         "created": "2017\/07\/05 11:07:31",
         "createdRFC": "2017\/07\/05T11:07:31-07:00",
         "recipient": {  
		    "username": "user123",
		    "firstName": "John",
		    "lastName": "D",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user123",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 },
         "sender": {
		    "username": "user3",
		    "firstName": "John",
		    "lastName": "F",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user3",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 }
      },
      {
         "subject": "Business - 348289THX",
         "body": "My new message1",
		  "review": {
			"reviewNo": 3,
			"rating": [
	          {
	            "type": "overall",
	            "rating": 2
	          },
	          {
	            "type": "service",
	            "rating": null
	          },
	          {
	            "type": "value",
	            "rating": null
	          },
	          {
	            "type": "shipping",
	            "rating": null
	          },
	          {
	            "type": "returns",
	            "rating": null
	          },
	          {
	            "type": "quality",
	            "rating": null
	          }
	        ],
	        "title": "Dissapointed",
	        "content": "Dissapointed.",
	        "tip": null,
	        "order_id": "348289THX",
	        "published": "2017/01/04 03:35:20",
	        "publishedRFC": "2017/01/04T03:35:20-07:00",
	        "edited": "",
	        "author": {
	          "username": "user123",
	          "firstName": "John",
	          "lastName": "D",
	          "thumbnail": "default_profile_photo.png",
	          "profilePage": "https://www.sitejabber.com/users/user123",
	          "numReviews": 0,
	          "numHelpfulVotes": 1
	        }
	      },
         "created": "2017\/06\/30 02:57:59",
		 "createdRFC": "2017\/06\/30T02:57:59-07:00",
         "recipient": {  
		    "username": "user123",
		    "firstName": "John",
		    "lastName": "D",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user123",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 },
         "sender":{  
		    "username": "user3",
		    "firstName": "John",
		    "lastName": "F",
		    "thumbnail": "default_profile_photo.png",
		    "profilePage": "https://www.sitejabber.com/users/user3",
		    "numReviews": 0,
		    "numHelpfulVotes": 1
		 }
      }
   ],
   "count":4,
   "start":0,
   "status":"OK",
   "success":true
}
```

### HTTP request

`GET https://api.sitejabber.com/v1/businesses/yourdomain.com/messages`

### Query parameters

Parameter | Default | Description
--------- | ------- | -----------
start | 0 | starting offset
count | 10 | number of messages to be included (max 100)
username | empty | get messages for specific user if given
folder | inbox | inbox/sent for received or sent messages
order | DESC | ASC/DESC order of the messages, ascending or descending
