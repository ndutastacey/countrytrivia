import '../../core/constants/api_constants.dart';

/// Represents a country with its name, ISO code, and flag URL.
class Country {
  /// The full country name (e.g., "France").
  final String name;

  /// The ISO 3166-1 alpha-2 code (e.g., "FR").
  final String isoCode;

  /// Creates a [Country] instance.
  ///
  /// The [flagUrl] is automatically constructed from [isoCode].
  const Country({
    required this.name,
    required this.isoCode,
  });

  /// The URL of the country's flag image.
  String get flagUrl => ApiConstants.buildFlagUrl(isoCode);

  /// Creates a [Country] from a JSON map.
  ///
  /// Expects keys `name` and `iso2` (or `isoCode`).
  factory Country.fromJson(Map<String, dynamic> json) {
    final name = json['name'] as String? ?? '';
    final iso = (json['iso2'] as String?) ?? (json['isoCode'] as String?) ?? '';
    return Country(
      name: name,
      isoCode: iso,
    );
  }

  /// Converts this [Country] to a JSON map.
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'iso2': isoCode,
    };
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Country &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          isoCode == other.isoCode;

  @override
  int get hashCode => name.hashCode ^ isoCode.hashCode;

  @override
  String toString() => 'Country(name: $name, isoCode: $isoCode)';
}
