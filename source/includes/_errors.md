# Errors

<aside class="notice">All the request come with a success and status key, if the success is false and the status is ERROR then you can find errorCode and errorReason</aside>

The Sitejabber API uses the following error codes:


Error Code | Reason
---------- | -------
101 | Client token invalid
102 | Client token access revoked
201 | Email or password invalid
202 | User access has been disabled
203 | User token missing or invalid
204 | User session is invalid
205 | Fatal error creating user access
206 | User access is invalid
207 | User token is expired
301 | Business not available
302 | Missing parameter
303 | Limit exceeded
304 | Email already exists
305 | The review does not exist
306 | Malformed parameter
307 | User not found
308 | Insufficient permissions
309 | Review request removal error
310 | Product review request removal error
311 | Error uploading image
399 | Unexpected error
401 | Product does not exist
402 | Image does not exist
403 | Product review does not exist
404 | Can vote only once every 24 hours
429 | Rate limit, too many requests
503 | Site under scheduled maintenance