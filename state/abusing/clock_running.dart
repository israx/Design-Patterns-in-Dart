import 'clock.dart';
import 'clock_state.dart';
import 'clock_stopped.dart';

class ClockRunning implements ClockState {
  @override
  void push(Clock clock) {
    print("Stopped");
    clock.setState(ClockStopped());
  }
}
