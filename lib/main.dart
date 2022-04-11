import 'package:flutter/material.dart';
import 'package:bonfire/bonfire.dart';

import 'guerreiro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Game(),
    );
  }
}

class Game extends StatelessWidget {
  const Game({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireTiledWidget(
      joystick: Joystick(
        directional: JoystickDirectional(),
      ),
      map: TiledWorldMap(
        'mapas/mapinha-finalizado.json',
        forceTileSize: Size(50, 50),
      ),
      player: Guerreiro(Vector2(6 * 50, 6 * 50)),
      showCollisionArea: false,
    );
  }
}
