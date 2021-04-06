
class Task {
  // give the isDone property default value of false to start off
  Task({this.name, this.isDone = false});

  final String name;
  bool isDone;

  // method to toggle isDone. Set it equal to the opposite of current value
  void toggleIsDone() {
    isDone = !isDone;
  }
}
