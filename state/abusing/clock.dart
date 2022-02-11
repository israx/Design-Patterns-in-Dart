import 'clock_state.dart';
import 'clock_stopped.dart';

class Clock {
  ClockState _state = ClockStopped();

  void setState(ClockState state) => _state = state;

  void push() {
    _state.push(this);
  }
}

void main() {
  Clock clock = Clock();

  clock.push();

  clock.push();

  clock.push();
}
