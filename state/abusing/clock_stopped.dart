import 'clock.dart';
import 'clock_running.dart';
import 'clock_state.dart';

class ClockStopped implements ClockState {
  @override
  void push(Clock clock) {
    print("Running");
    clock.setState(ClockRunning());
  }
}
