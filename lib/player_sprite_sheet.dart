import 'package:bonfire/bonfire.dart';

class PlayerSpriteSheet {
  static get idleRight => SpriteAnimation.load(
        'player/idle-right.png',
        SpriteAnimationData.sequenced(
            amount: 4, stepTime: 0.1, textureSize: Vector2(16, 16)),
      );

  static get idleLeft => SpriteAnimation.load(
        'player/idle-left.png',
        SpriteAnimationData.sequenced(
            amount: 4, stepTime: 0.1, textureSize: Vector2(16, 16)),
      );

  static get playerStay => SpriteAnimation.load(
        'player/stay.png',
        SpriteAnimationData.sequenced(
            amount: 4, stepTime: 0.1, textureSize: Vector2(16, 16)),
      );
}
