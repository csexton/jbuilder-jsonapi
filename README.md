# Jbuilder::Jsonapi

[Jbuilder](https://github.com/rails/jbuilder) extension that makes following the [JSON API](http://jsonapi.org/) conventions easier.

## Usage

This library will extend Jbuilder and add a few methods to the `json` object in the templates.

## Resource Methods

### `links!`

The value of the "links" key is a JSON object that represents related resources.

```ruby
json.links do
  json.links! post, :comments, :user, :tags
end
```

Renders to:

```json
{
  "links": {
    "comments":["1", "2", "3"],
    "user":"42",
    "tags":["1", "1337"]
  }
}
```

## Installation

Add this line to your application's Gemfile:

    gem 'jbuilder-jsonapi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jbuilder-jsonapi


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Distributed under the MIT license. See [LICENSE](LICENSE.txt) for details.
