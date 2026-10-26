/// Response models for the Did You Mean API.

/// API Response wrapper.
class DidyoumeanResponse {
  final String status;
  final dynamic error;
  final DidyoumeanData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  DidyoumeanResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory DidyoumeanResponse.fromJson(Map<String, dynamic> json) => DidyoumeanResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? DidyoumeanData.fromJson(json['data']) : null,
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

/// Response data for the Did You Mean API.

class DidyoumeanData {
  String? query;
  List<String>? didYouMean;

  DidyoumeanData({
    this.query,
    this.didYouMean,
  });

  factory DidyoumeanData.fromJson(Map<String, dynamic> json) => DidyoumeanData(
      query: json['query'],
      didYouMean: (json['didYouMean'] as List?)?.cast<String>(),
    );
}

class DidyoumeanRequest {
  String query;

  DidyoumeanRequest({
    required this.query,
  });

  Map<String, dynamic> toJson() => {
      'query': query,
    };
}
