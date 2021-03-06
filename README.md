# KA: write georgian softwate with ruby

There are number of occasions when you deal with uncommon situations in georgian software.
Those are:

* mobile number validation,
* numbers to readable format (1 -> 'ერთი'), 
* date formatting (not supported by i18n)
* and outdated, but still active, GEO character encoding.

KA gem will enable you to deal with all these situations.

## Installation

Add this line to your application's Gemfile:

    gem 'ka', 

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ka

## Usage

### Mobile numbers

Validation and formatting of mobile numbers are self-exmplanatory:

```ruby
require 'ka'
include KA
...
mobile = 'my mobile: (595) 33 55 14'
compact_mobile(mobile) # => '595335514'
correct_mobile?(mobile) # => true
format_mobile(mobile, operator_pre: '[', operator_suf: ']', by: 2, separator: ' ') #=> [595]33 55 14
```

### Number spelling

`to_ka` method is integrated within `Integer` class.
Now you can convert integers into georgian words (works upto 999,999,999,999,999).

This task is common, especialy when writing some accounting software.

```ruby
1.to_ka # => ერთი
999_999_999_999_999.to_ka # => ცხრაას ოთხმოცდა ცხრამეტი ტრილიონ ცხრაას ოთხმოცდა ცხრამეტი მილიარდ ცხრაას ოთხმოცდა ცხრამეტი მილიონ ცხრაას ოთხმოცდა ცხრამეტი ათას ცხრაას ოთხმოცდა ცხრამეტი
```

### Date formats

TODO:

### GEO character encoding

When using the `ka` gem `String` automatically receives the `to_ka`, `to_geo` and `to_lat` methods.

```ruby
'dimitri'.to_ka(:all)  # => დიმიტრი
'დიმიტრი'.to_lat # => dimitri
'დიმიტრი'.to_geo # => ÃÉÌÉÔÒÉ
```

The `to_ka` method receives the additional `type` parameter which indicates which characters
to use when converting to georgian unicode. There are three possible values for this parameter:

* `geo`, convert only GEO characters (default),
* `lat`, convert only LAT characters and
* `all`, converts both GEO and LAT characters.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
