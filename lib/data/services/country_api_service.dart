import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../core/constants/api_constants.dart';
import '../models/country.dart';

/// Service that fetches country data from the API.
class CountryApiService {
  final http.Client _client;

  CountryApiService({http.Client? client}) : _client = client ?? http.Client();

  /// Fetches the list of countries from the API.
  ///
  /// Returns a list of [Country] objects.
  /// Throws [Exception] on network error, timeout, or invalid response.
  Future<List<Country>> fetchCountries() async {
    try {
      final response = await _client
          .get(Uri.parse(ApiConstants.countriesApiUrl))
          .timeout(ApiConstants.requestTimeout);

      if (response.statusCode != 200) {
        throw Exception(
          'Failed to fetch countries: HTTP ${response.statusCode}',
        );
      }

      final Map<String, dynamic> json = jsonDecode(response.body);
      final List<dynamic> data = json['data'] as List<dynamic>? ?? [];

      return data.map((item) {
        final Map<String, dynamic> countryJson = item as Map<String, dynamic>;
        // Handle nested 'name' field if present
        final name = countryJson['name'] is String
            ? countryJson['name'] as String
            : (countryJson['name'] as Map<String, dynamic>)['common'] as String? ?? '';
        final iso = (countryJson['iso2'] as String?) ?? '';
        return Country(name: name, isoCode: iso);
      }).toList();
    } on FormatException catch (e) {
      throw Exception('Invalid JSON response: $e');
    } on http.ClientException catch (e) {
      throw Exception('Network error: $e');
    }
  }
}
