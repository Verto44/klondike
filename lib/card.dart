import 'package:flame/components.dart';
import 'package:klondike/klondike_game.dart';
import 'package:klondike/rank.dart';
import 'package:klondike/suit.dart';

class Card extends PositionComponent {
  final Rank rank;
  final Suit suit;
  bool _faceUp;

  Card(int intRank, int intSuit)
    : rank = Rank.fromInt(intRank),
      suit = Suit.fromInt(intSuit),
      _faceUp = false,
      super(size: KlondikeGame.cardSize);

  bool get isFaceUp => _faceUp;
  bool get isFaceDown => !_faceUp;
  void flip() => _faceUp = !_faceUp;

  @override
  String toString() => rank.label + suit.label;
}
