import 'package:flutter/material.dart';

import 'package:solar_system/models/planet.dart';
import 'package:solar_system/widgets/app_circle_avatar.dart';

class PlanetListTile extends StatelessWidget {
  final Widget child;
  final Planet planet;
  final Function onTap;
  final Widget subtitle;
  final String imageHeroTag;

  PlanetListTile({
    Key key,
    this.child,
    @required this.planet,
    this.onTap,
    this.subtitle,
    this.imageHeroTag,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(planet.name),
        subtitle: subtitle,
        leading: imageHeroTag != null
            ? Hero(
                tag: imageHeroTag,
                child: AppCircleAvatar(
                  urlImage: planet.urlImage,
                ),
              )
            : AppCircleAvatar(
                urlImage: planet.urlImage,
              ),
        onTap: onTap,
      ),
    );
  }
}
