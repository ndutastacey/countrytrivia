/// API endpoints and related constants for the Country Trivia app.
class ApiConstants {
  ApiConstants._();

  /// Base URL for the countries API.
  /// Provides country names and ISO codes.
  static const String countriesApiUrl =
      'https://countriesnow.space/api/v0.1/countries';

  /// Template for flag image URLs.
  /// Replace `{iso}` with the ISO 3166-1 alpha-2 code (lowercase).
  /// Example: http://flagcdn.com/w320/fr.png
  static const String flagUrlTemplate = 'http://flagcdn.com/w320/{iso}.png';

  /// Flag image width variant (w320 = 320px wide).
  static const String flagWidth = 'w320';

  /// HTTP request timeout duration.
  static const Duration requestTimeout = Duration(seconds: 10);

  /// Builds a flag image URL for the given ISO code.
  static String buildFlagUrl(String isoCode) {
    return flagUrlTemplate.replaceFirst('{iso}', isoCode.toLowerCase());
  }
}
