import '../travel_mode_interface.dart';

class Transit implements TravelMode {
  @override
  void getDirection() {
    print("Calculating ETA (transit)");
  }

  @override
  void getEta() {
    print("Calculating Direction (transit)");
  }
}
