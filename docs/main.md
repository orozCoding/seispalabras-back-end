This is a doc draft

The app is mainly API

## Models

- User
We're not using devise. We are using the gems:
gem 'jwt'
gem 'bcrypt'

We added a Module JsonWebToken that we use to encode and decode the token, using JWT

After a loging, we encode the token and send it to the client
We can see it on AuthenticationController#login
In users controller tests we use the module to encode the token manually

In the application controller authorize_request we use the module to decode the token comming in the request header


- Translation



## Authorization

We are using JWT for authorization

When user logs in via API we return User hash including a Token like
eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoyLCJleHAiOjE3MDE0ODU4ODR9.XaixWtZdW307VBZKyjP-9-ruMsZf0BU5uf9ylKNOhzg

Then most of the calls to the API needs to have in the headers an Authorization key with the value of the token

That will be used to authorize the user and set the @current_user variable