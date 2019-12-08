# RubyGems
https://rubygems.org/gems/rails-validator

# Description
Gem to validate files, emails and passwords input

Returns boolean result of ```true``` or ```false```

# Installation
Add this to your Gemfile
```
gem 'rails-validator
```
# Usage
Call the gem wherever you need to validate some input
```
RailsValidator.validate_file(file_name, file_size)

RailsValidator.validate_email(email)

RailsValidator.validate_password(password)
```
# License
RailsValidator is released under the [MIT License](https://opensource.org/licenses/MIT)
