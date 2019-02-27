import 'package:flutter/material.dart';
import 'package:solar_system/models/planet.dart';
import 'package:solar_system/services/planet_service.dart';
import 'package:solar_system/widgets/planet_list_tile.dart';

class SinglePage extends StatelessWidget {
  final Widget child;
  final Planet planet;
  final PlanetService planetService = PlanetService();

  SinglePage({Key key, this.child, this.planet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(planet.name),
      ),
      body: ListView(
        children: [
          Container(
            child: Hero(
              tag: planet.name,
              child: Image.network(planet.urlImage),
            ),
          ),
          Card(
            child: ListTile(
              contentPadding:EdgeInsets.all(12.0),
              subtitle: Text(planet.desc),
            ),
          ),
        ]..addAll(
            planetService.planetsOrdereByDistanceOfPlanet(planet).map(
              (closePlanet) {
                return PlanetListTile(
                  subtitle: Text(
                    "${planetService.distanceFromPlanets(closePlanet, planet).toStringAsPrecision(2)} AU from ${planet.name}.",
                  ),
                  planet: closePlanet,
                );
              },
            ).toList(),
          ),
      ),
    );
  }
}

// .addAll([Container(
//             child: Hero(
//               tag: planet.name,
//               child: Image.network(planet.urlImage),
//             ),
//           ),])
