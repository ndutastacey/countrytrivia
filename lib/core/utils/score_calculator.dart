import '../constants/app_constants.dart';

/// Utility class for calculating scores based on attempt number.
class ScoreCalculator {
  ScoreCalculator._();

  /// Returns the points awarded for a correct answer on the given attempt.
  ///
  /// [attemptNumber] is 1-based (1 = first attempt, 2 = second, etc.).
  /// Returns 0 if all attempts are exhausted.
  static int calculatePoints(int attemptNumber) {
    switch (attemptNumber) {
      case 1:
        return AppConstants.pointsFirstAttempt;
      case 2:
        return AppConstants.pointsSecondAttempt;
      case 3:
        return AppConstants.pointsThirdAttempt;
      default:
        return AppConstants.pointsFailed;
    }
  }

  /// Returns the maximum number of attempts allowed per question.
  static int getMaxAttempts() => AppConstants.maxAttempts;
}
