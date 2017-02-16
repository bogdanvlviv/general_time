# GeneralTime

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'general_time'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install general_time

## Usage

### #days_between

Formula: `((date2.yday - date1.yday) + 365 * (date2.year - date1.year)).abs`

```ruby
require "date"
require "general_time"

Date.new(2017, 2, 10).days_between(Date.new(2017, 2, 10)) # => 0

Date.new(2017, 2, 9).days_between(Date.new(2017, 2, 10)) # => 1
Date.new(2017, 2, 10).days_between(Date.new(2017, 2, 9)) # => 1
Date.new(2017, 2, 1).days_between(Date.new(2017, 2, 10)) # => 9
Date.new(2017, 2, 10).days_between(Date.new(2017, 2, 1)) # => 9
Date.new(2016, 2, 10).days_between(Date.new(2017, 2, 10)) # => 365
Date.new(2017, 2, 10).days_between(Date.new(2016, 2, 10)) # => 365
```

```ruby
require "general_time"

Time.new(2017, 2, 10, 10, 10, 10).days_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 0

Time.new(2017, 2, 10, 9, 10, 10).days_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 0
Time.new(2017, 2, 10, 10, 10, 10).days_between(Time.new(2017, 2, 10, 9, 10, 10)) # => 0

Time.new(2017, 2, 9, 10, 10, 10).days_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 1
Time.new(2017, 2, 10, 10, 10, 10).days_between(Time.new(2017, 2, 9, 10, 10, 10)) # => 1
Time.new(2017, 2, 1, 10, 10, 10).days_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 9
Time.new(2017, 2, 10, 10, 10, 10).days_between(Time.new(2017, 2, 1, 10, 10, 10)) # => 9
Time.new(2016, 2, 10, 10, 10, 10).days_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 365
Time.new(2017, 2, 10, 10, 10, 10).days_between(Time.new(2016, 2, 10, 10, 10, 10)) # => 365
```

### #weeks_between

Formula: `((date2.cweek - date1.cweek) + 52 * (date2.year - date1.year)).abs`

```ruby
require "date"
require "general_time"

Date.new(2017, 2, 10).weeks_between(Date.new(2017, 2, 10)) # => 0

Date.new(2017, 2, 3).weeks_between(Date.new(2017, 2, 10)) # => 1
Date.new(2017, 2, 10).weeks_between(Date.new(2017, 2, 3)) # => 1
Date.new(2016, 12, 9).weeks_between(Date.new(2017, 2, 10)) # => 9
Date.new(2017, 2, 10).weeks_between(Date.new(2016, 12, 9)) # => 9
Date.new(2016, 2, 10).weeks_between(Date.new(2017, 2, 10)) # => 52
Date.new(2017, 2, 10).weeks_between(Date.new(2016, 2, 10)) # => 52
```

```ruby
require "general_time"

Time.new(2017, 2, 10, 10, 10, 10).weeks_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 0

Time.new(2017, 2, 10, 9, 10, 10).weeks_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 0
Time.new(2017, 2, 10, 10, 10, 10).weeks_between(Time.new(2017, 2, 10, 9, 10, 10)) # => 0

Time.new(2017, 2, 3, 10, 10, 10).weeks_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 1
Time.new(2017, 2, 10, 10, 10, 10).weeks_between(Time.new(2017, 2, 3, 10, 10, 10)) # => 1
Time.new(2016, 12, 9, 10, 10, 10).weeks_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 9
Time.new(2017, 2, 10, 10, 10, 10).weeks_between(Time.new(2016, 12, 9, 10, 10, 10)) # => 9
Time.new(2016, 2, 10, 10, 10, 10).weeks_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 52
Time.new(2017, 2, 10, 10, 10, 10).weeks_between(Time.new(2016, 2, 10, 10, 10, 10)) # => 52
```

### #months_between

Formula: `((date2.month - date1.month) + 12 * (date2.year - date1.year)).abs`

```ruby
require "date"
require "general_time"

Date.new(2017, 2, 10).months_between(Date.new(2017, 2, 10)) # => 0

Date.new(2017, 2, 9).months_between(Date.new(2017, 2, 10)) # => 0
Date.new(2017, 2, 10).months_between(Date.new(2017, 2, 9)) # => 0

Date.new(2017, 1, 10).months_between(Date.new(2017, 2, 10)) # => 1
Date.new(2017, 2, 10).months_between(Date.new(2017, 1, 10)) # => 1
Date.new(2016, 5, 10).months_between(Date.new(2017, 2, 10)) # => 9
Date.new(2017, 2, 10).months_between(Date.new(2016, 5, 1)) # => 9
Date.new(2016, 2, 10).months_between(Date.new(2017, 2, 10)) # => 12
Date.new(2017, 2, 10).months_between(Date.new(2016, 2, 10)) # => 12
```

```ruby
require "general_time"

Time.new(2017, 2, 10, 10, 10, 10).months_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 0

Time.new(2017, 2, 9, 10, 10, 10).months_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 0
Time.new(2017, 2, 10, 10, 10, 10).months_between(Time.new(2017, 2, 9, 10, 10, 10)) # => 0

Time.new(2017, 1, 10, 10, 10, 10).months_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 1
Time.new(2017, 2, 10, 10, 10, 10).months_between(Time.new(2017, 1, 10, 10, 10, 10)) # => 1
Time.new(2016, 5, 10, 10, 10, 10).months_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 9
Time.new(2017, 2, 10, 10, 10, 10).months_between(Time.new(2016, 5, 1, 10, 10, 10)) # => 9
Time.new(2016, 2, 10, 10, 10, 10).months_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 12
Time.new(2017, 2, 10, 10, 10, 10).months_between(Time.new(2016, 2, 10, 10, 10, 10)) # => 12
```

### #years_between

Formula: `(date2.year - date1.year).abs`

```ruby
require "date"
require "general_time"

Date.new(2017, 2, 10).years_between(Date.new(2017, 2, 10)) # => 0

Date.new(2017, 1, 10).years_between(Date.new(2017, 2, 10)) # => 0
Date.new(2017, 2, 10).years_between(Date.new(2017, 1, 10)) # => 0

Date.new(2016, 2, 10).years_between(Date.new(2017, 2, 10)) # => 1
Date.new(2017, 2, 10).years_between(Date.new(2016, 2, 10)) # => 1
Date.new(2008, 2, 10).years_between(Date.new(2017, 2, 10)) # => 9
Date.new(2017, 2, 10).years_between(Date.new(2008, 2, 10)) # => 9
```

```ruby
require "general_time"

Time.new(2017, 2, 10, 10, 10, 10).years_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 0

Time.new(2017, 1, 10, 10, 10, 10).years_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 0
Time.new(2017, 2, 10, 10, 10, 10).years_between(Time.new(2017, 1, 10, 10, 10, 10)) # => 0

Time.new(2016, 2, 10, 10, 10, 10).years_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 1
Time.new(2017, 2, 10, 10, 10, 10).years_between(Time.new(2016, 2, 10, 10, 10, 10)) # => 1
Time.new(2008, 2, 10, 10, 10, 10).years_between(Time.new(2017, 2, 10, 10, 10, 10)) # => 9
Time.new(2017, 2, 10, 10, 10, 10).years_between(Time.new(2008, 2, 10, 10, 10, 10)) # => 9
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/bogdanvlviv/general_time. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Code Status

[![travis-ci](https://api.travis-ci.org/bogdanvlviv/general_time.svg?branch=master)](https://travis-ci.org/bogdanvlviv/general_time)

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
