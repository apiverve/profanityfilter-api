/// Profanity Filter API client for Dart/Flutter
///
/// Profanity Filter is a bad word filter API that scans text for offensive language and masks detected swear words with a chosen replacement character. It returns the sanitized text and a boolean flag indicating if profanity was present. Paid plans add the count of filtered words, each matched word with its position, and custom allow and block word lists.
///
/// For more information, visit: https://apiverve.com/marketplace/profanityfilter?utm_source=dart&utm_medium=referral&utm_content=readme
library apiverve_profanityfilter;

export 'src/client.dart';
export 'src/models.dart';
