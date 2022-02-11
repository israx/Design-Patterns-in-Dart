import '../travel_mode_interface.dart';

class Walking implements TravelMode {
  @override
  void getDirection() {
    print("Calculating ETA (walking)");
  }

  @override
  void getEta() {
    print("Calculating Direction (walking)");
  }
}
