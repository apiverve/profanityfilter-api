# Profanity Filter API - PHP Package

Profanity Filter is a bad word filter API that scans text for offensive language and masks detected swear words with a chosen replacement character. It returns the sanitized text and a boolean flag indicating if profanity was present.

## Installation

Install via Composer:

```bash
composer require apiverve/profanityfilter
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Profanityfilter\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'text' => 'Today is so damn hot! Why the hell would anyone go outside?',
    'mask' => '*'
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Profanityfilter\Client;
use APIVerve\Profanityfilter\Exceptions\APIException;
use APIVerve\Profanityfilter\Exceptions\ValidationException;

try {
    $response = $client->execute(['text' => 'Today is so damn hot! Why the hell would anyone go outside?', 'mask' => '*']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/profanityfilter?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/profanityfilter?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/profanityfilter?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
