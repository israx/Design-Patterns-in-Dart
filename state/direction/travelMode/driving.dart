import '../travel_mode_interface.dart';

class Driving implements TravelMode {
  @override
  void getDirection() {
    print("Calculating ETA (driving)");
  }

  @override
  void getEta() {
    print("Calculating Direction (driving)");
  }
}
