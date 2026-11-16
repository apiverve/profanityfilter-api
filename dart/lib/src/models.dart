/// Response models for the Profanity Filter API.

/// API Response wrapper.
class ProfanityfilterResponse {
  final String status;
  final dynamic error;
  final ProfanityfilterData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  ProfanityfilterResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory ProfanityfilterResponse.fromJson(Map<String, dynamic> json) => ProfanityfilterResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? ProfanityfilterData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Profanity Filter API.

class ProfanityfilterData {
  bool? isProfane;
  String? filteredText;
  String? mask;
  bool? trimmed;
  num? profaneWords;
  List<ProfanityfilterDataMatchesItem>? matches;

  ProfanityfilterData({
    this.isProfane,
    this.filteredText,
    this.mask,
    this.trimmed,
    this.profaneWords,
    this.matches,
  });

  factory ProfanityfilterData.fromJson(Map<String, dynamic> json) => ProfanityfilterData(
      isProfane: json['isProfane'],
      filteredText: json['filteredText'],
      mask: json['mask'],
      trimmed: json['trimmed'],
      profaneWords: json['profaneWords'],
      matches: (json['matches'] as List?)?.map((e) => ProfanityfilterDataMatchesItem.fromJson(e)).toList(),
    );
}

class ProfanityfilterDataMatchesItem {
  String? word;
  num? start;
  num? end;

  ProfanityfilterDataMatchesItem({
    this.word,
    this.start,
    this.end,
  });

  factory ProfanityfilterDataMatchesItem.fromJson(Map<String, dynamic> json) => ProfanityfilterDataMatchesItem(
      word: json['word'],
      start: json['start'],
      end: json['end'],
    );
}

class ProfanityfilterRequest {
  String text;
  String? mask;
  bool? details;

  ProfanityfilterRequest({
    required this.text,
    this.mask,
    this.details,
  });

  Map<String, dynamic> toJson() => {
      'text': text,
      if (mask != null) 'mask': mask,
      if (details != null) 'details': details,
    };
}
