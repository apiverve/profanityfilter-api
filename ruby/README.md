# Profanity Filter API - Ruby Gem

Profanity Filter is a bad word filter API that scans text for offensive language and masks detected swear words with a chosen replacement character. It returns the sanitized text and a boolean flag indicating if profanity was present.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_profanityfilter'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_profanityfilter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_profanityfilter'

# Initialize the client
client = APIVerve::Profanityfilter::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  text: "Today is so damn hot! Why the hell would anyone go outside?",
  mask: "*"
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ text: "Today is so damn hot! Why the hell would anyone go outside?", mask: "*" })
  puts response["data"]
rescue APIVerve::Profanityfilter::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Profanityfilter::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Profanityfilter::Client.new(
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
    "isProfane": true,
    "filteredText": "Today is so **** hot! Why the **** would anyone go outside?",
    "mask": "*",
    "trimmed": false,
    "profaneWords": 2
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/profanityfilter?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/profanityfilter?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/profanityfilter?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
