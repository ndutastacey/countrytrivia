import '../models/country.dart';
import '../services/country_api_service.dart';

/// Repository for country data with in-memory caching.
class CountryRepository {
  final CountryApiService _apiService;
  List<Country>? _cachedCountries;

  CountryRepository({required CountryApiService apiService})
      : _apiService = apiService;

  /// Returns the list of countries, fetching from API if not cached.
  Future<List<Country>> getCountries() async {
    if (_cachedCountries != null) {
      return _cachedCountries!;
    }
    _cachedCountries = await _apiService.fetchCountries();
    return _cachedCountries!;
  }

  /// Clears the cache, forcing the next [getCountries] call to fetch fresh data.
  void clearCache() {
    _cachedCountries = null;
  }

  /// Returns the number of cached countries, or 0 if not cached.
  int get cachedCount => _cachedCountries?.length ?? 0;
}
