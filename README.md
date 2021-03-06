# GetOgp
GetOgp is ruby library to get ogp data. To get ogp data library is already exists, but many of them are errors when og:type is not exist.

I think it is inconvenience. So, I created more free ogp library.

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
# get ogp data if property="og:~" or name="og:~" is exist
open_graph = GetOgp.get_data("https://ogp.me")
open_graph['title'] # => "Open Graph protocol"
open_graph['type'] # => "website"
open_graph['image'] # => "https://ogp.me/logo.png"
open_graph['url'] # => "https://ogp.me/"

# if ogp is not exist, return title tag text
not_exist_open_graph = GetOgp.get_data("http://example.com")
open_graph['title'] # => "Example Domain"

# if ogp and title tag are not exist, return false
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sinn22/get_ogp. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/sinn22/get_ogp/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GetOgp project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sinn22/get_ogp/blob/master/CODE_OF_CONDUCT.md).
