import 'package:flutter/material.dart';

import 'package:bonfire/bonfire.dart';
import 'package:flutterando_game/player_sprite_sheet.dart';

class Guerreiro extends SimplePlayer with ObjectCollision {
  Guerreiro(Vector2 position)
      : super(
            position: position,
            animation: SimpleDirectionAnimation(
              idleLeft: PlayerSpriteSheet.idleLeft,
              idleRight: PlayerSpriteSheet.idleRight,
              runRight: PlayerSpriteSheet.idleRight,
              runLeft: PlayerSpriteSheet.idleLeft,
            ),
            width: 50,
            height: 50) {
    setupCollision(
      CollisionConfig(collisions: [
        CollisionArea.rectangle(size: Size(40, 50)),
      ]),
    );
  }
}
