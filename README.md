# GetOgp

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/get_ogp`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'get_ogp'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install get_ogp

## Usage

```ruby
open_graph = GetOgp.get_data("https://ogp.me")
open_graph['title'] # => "Open Graph protocol"
open_graph['type'] # => "website"
open_graph['image'] # => "https://ogp.me/logo.png"
open_graph['url'] # => "https://ogp.me/"

# if ogp is not exist, return false
not_exist_open_graph = GetOgp.get_data(""http://example.com")
not_exist_open_graph # => false
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sinn22/get_ogp. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/sinn22/get_ogp/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GetOgp project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sinn22/get_ogp/blob/master/CODE_OF_CONDUCT.md).
