import 'package:solar_system/models/planet.dart';
import 'package:solar_system/planets_mock.dart';

class PlanetService {
  final _solarSystem = solarSystem;

  List<Planet> get planets => _solarSystem;

  List<Planet> planetsOrdereByDistanceOfPlanet(Planet planet) {
    return planets.where((listPlanet) => listPlanet != planet).toList()
      ..sort((planetA, planetB) {
        final distanceToA = distanceFromPlanets(planet, planetA);
        final distanceToB = distanceFromPlanets(planet, planetB);
        return distanceToA?.compareTo(distanceToB);
      });
  }

  double distanceFromPlanets(Planet planetA, Planet planetB) {
    return (planetA.distanceFromTheSun - planetB.distanceFromTheSun)?.abs();
  }
}
