enum ClockState { STOPPED, RUNNING }

class Clock {
  ClockState _state = ClockState.STOPPED;

  void push() {
    if (_state == ClockState.STOPPED) {
      print("Running");
      _state = ClockState.RUNNING;
    } else {
      print("Stopped");
      _state = ClockState.STOPPED;
    }
  }
}

void main() {
  Clock clock = Clock();

  clock.push();
  clock.push();
  clock.push();
  clock.push();
}
