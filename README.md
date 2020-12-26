# CodeIgniter Rest Server With JWT Authentication

A fully RESTful server implementation for CodeIgniter using JWT for Authentication
## Notes

- Import Database from /db/eduvanz_meetup.sql
- Test it with postman/insomnia
- Create post method from postman for user authentication "http://localhost/ci-rest-jwt/api/auth/login"
- Add this to body multipart form :
	
	username = admin
	
	password = dodi123
- If your authentication success you will get generated token response

	Authentication: Bearer "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIiLCJ1c2VybmFtZSI6ImRvZGk"

## Refference

This project Using REST by Phil Sturgeon and Firebase/PHP-JWT.
For more information :
## REST
https://github.com/chriskacerguis/codeigniter-restserver
## JWT
https://github.com/firebase/php-jwt
