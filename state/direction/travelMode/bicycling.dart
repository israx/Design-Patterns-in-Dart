import '../travel_mode_interface.dart';

class Bicycling implements TravelMode {
  @override
  void getDirection() {
    print("Calculating ETA (bicycling)");
  }

  @override
  void getEta() {
    print("Calculating Direction (bicycling)");
  }
}
