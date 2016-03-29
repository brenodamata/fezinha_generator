# 📿 FézinhaGenerator

Gerador de fézinha

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fezinha_generator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fezinha_generator

## Usage

Grab the latest lotery winning 6 numbers

  ` FezinhaGenerator.resultado
  ` => "04  08  29  38  49  50"
  Returns the latest six winning numbers in a string format.

Generate six numbers for lotery bet

  ` FezinhaGenerator.fezinha
  ` => [22, 27, 28, 33, 47, 51]
  Returns the default 6 numbers bet in an array format.

  ` FezinhaGenerator.fezinha_to_s
  ` => "1 5 24 29 32 60"
  Returns the default 6 numbers bet in a string.

Generate N numbers for lotery bet
  ` FezinhaGenerator.fezinha 8
  ` => [1, 3, 4, 9, 11, 30, 49, 59]
  ` FezinhaGenerator.fezinha_to_s 10
  ` => "6 18 26 27 30 35 36 40 51 56"

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/brenodamata/fezinha_generator.

