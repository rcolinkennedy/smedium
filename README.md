#smedium
Simple app using Omniauth-twitter to sign in with Twitter and create a user when necessary. Requires email address for user to register completely, and sends notificaiton to that email address when settings are updated.

Inspired by the signin process currently implemented at medium.com

Use case is as a very barebones, lightweight starting point for projects. Goal was to have something as simple and easy to extend as possible, with some tradeoffs in styling and functionality in favor of ease/speed of implementation and customization.

## Getting Started
* Ruby 2.0.0, Rails 4.0.1


## System dependencies
* gem omniauth-twitter (https://github.com/arunagw/omniauth-twitter)
* uses gem figaro to handle keys as environment variables for Twitter and Mandrill (https://github.com/laserlemon/figaro)
* currently set up for Mandrill SMTP for transactional email

## Examples
- You can find an exmaple at (http://smedium.rcolinkennedy.com) for as long as Heroku lets me leave it up.

## Contributing
In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests for any new or changed functionality. Comment and test your code.

## Authors
- R. Colin Kennedy (https://github.com/rcolinkennedy)


## License
Licensed under the MIT license. 