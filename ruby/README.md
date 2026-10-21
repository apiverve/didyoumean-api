# Did You Mean API - Ruby Gem

Did You Mean suggests spelling corrections for misspelled search queries and phrases. Pass any text string to receive the original query along with a list of alternate spelling suggestions.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_didyoumean'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_didyoumean
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_didyoumean'

# Initialize the client
client = APIVerve::Didyoumean::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ query: "what weather today is" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ query: "what weather today is" })
  puts response["data"]
rescue APIVerve::Didyoumean::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Didyoumean::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Didyoumean::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "query": "what weather today is",
    "didYouMean": [
      "what is the weather today",
      "what's the weather like today",
      "what will be the weather today"
    ]
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/didyoumean?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/didyoumean?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/didyoumean?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
