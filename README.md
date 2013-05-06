# KA write ruby in georgian

There are number of occasions when you deal with uncommon situations in georgian programs.
Those are mobile number validation, date formatting (not supported in i18n by default)
and outdated, but still active, GEO character encoding.

KA gem will enable you to deal with all these situations.

## Installation

Add this line to your application's Gemfile:

    gem 'ka'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ka

## Usage

### Mobile numbers

```ruby
require 'ka'
include KA
mobile = 'my mobile: (595) 33 55 14'
compact_mobile(mobile) # => '595335514'
correct_mobile?(mobile) # => true
format_mobile(mobile, operator_pre: '[', operator_suf: ']', by: 2, separator: ' ') #=> [595]33 55 14
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
