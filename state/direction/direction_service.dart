import 'travelMode/walking.dart';
import 'travelMode/bicycling.dart';
import 'travel_mode_interface.dart';

class DirectionService {
  TravelMode _travelMode = Walking();

  void getEta() {
    _travelMode.getEta();
  }

  void getDirection() {
    _travelMode.getDirection();
  }

  void setTravelMode(TravelMode mode) => _travelMode = mode;

  TravelMode getTravelMode() => _travelMode;
}

void main() {
  DirectionService directionService = DirectionService();

  directionService.getEta();

  directionService.setTravelMode(Bicycling());

  directionService.getEta();
}
