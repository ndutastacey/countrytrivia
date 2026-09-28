import '../../data/models/country.dart';

/// Represents a trivia question with a flag and 4 country options.
class Question {
  /// The country the flag belongs to (the correct answer).
  final Country correctCountry;

  /// The 4 answer options (1 correct + 3 distractors), shuffled.
  final List<Country> options;

  /// The URL of the flag image.
  final String flagUrl;

  const Question({
    required this.correctCountry,
    required this.options,
    required this.flagUrl,
  });
}
