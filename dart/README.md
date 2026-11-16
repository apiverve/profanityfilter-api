# Profanity Filter API - Dart/Flutter Client

Profanity Filter is a bad word filter API that scans text for offensive language and masks detected swear words with a chosen replacement character. It returns the sanitized text and a boolean flag indicating if profanity was present. Paid plans add the count of filtered words, each matched word with its position, and custom allow and block word lists.

[![pub package](https://img.shields.io/pub/v/apiverve_profanityfilter.svg)](https://pub.dev/packages/apiverve_profanityfilter)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Profanity Filter API](https://apiverve.com/marketplace/profanityfilter?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_profanityfilter: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_profanityfilter/apiverve_profanityfilter.dart';

void main() async {
  final client = ProfanityfilterClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'text': 'Today is so damn hot! Why the hell would anyone go outside?',
      'mask': '*',
      'details': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "isProfane": true,
    "filteredText": "Today is so **** hot! Why the **** would anyone go outside?",
    "mask": "*",
    "trimmed": false,
    "profaneWords": 2,
    "matches": [
      {
        "word": "damn",
        "start": 12,
        "end": 16
      },
      {
        "word": "hell",
        "start": 30,
        "end": 34
      }
    ]
  }
}
```

## API Reference

- **API Home:** [Profanity Filter API](https://apiverve.com/marketplace/profanityfilter?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/profanityfilter](https://docs.apiverve.com/ref/profanityfilter?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
