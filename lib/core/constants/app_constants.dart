/// App-wide constants for the Country Trivia game.
class AppConstants {
  AppConstants._();

  /// App title displayed in the app bar.
  static const String appTitle = 'Country Trivia';

  /// Maximum number of attempts per question.
  static const int maxAttempts = 3;

  /// Points awarded for a correct answer on the first attempt.
  static const int pointsFirstAttempt = 10;

  /// Points awarded for a correct answer on the second attempt.
  static const int pointsSecondAttempt = 8;

  /// Points awarded for a correct answer on the third attempt.
  static const int pointsThirdAttempt = 5;

  /// Points awarded when all attempts are exhausted (answer revealed).
  static const int pointsFailed = 0;

  /// Number of answer options presented per question.
  static const int optionsPerQuestion = 4;

  /// Minimum number of countries required to generate a question.
  static const int minCountriesRequired = 4;

  /// SharedPreferences key for storing played country ISO codes.
  static const String playedCountriesKey = 'played_countries';

  /// Duration for which the feedback overlay is displayed.
  static const Duration feedbackDuration = Duration(seconds: 2);
}
