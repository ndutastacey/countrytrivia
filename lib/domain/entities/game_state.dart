/// Represents the current state of the game.
enum GameStatus {
  /// App just started, no data loaded yet.
  initial,

  /// Fetching data or generating a question.
  loading,

  /// Question displayed, waiting for user input.
  ready,

  /// User answered (correct or wrong), showing feedback.
  answered,

  /// All attempts exhausted, correct answer revealed.
  revealed,

  /// Network or other error occurred.
  error,
}
