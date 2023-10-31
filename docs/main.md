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

