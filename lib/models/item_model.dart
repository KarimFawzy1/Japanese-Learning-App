import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String image;
  final String eng;
  final String jap;
  final String sound;

  const ItemModel(
      {required this.image,
      required this.eng,
      required this.jap,
      required this.sound});

  playSound() async {
    final player = AudioPlayer();
    try {
      print('▶️ Trying to play: sounds/numbers/$sound');
      await player.play(AssetSource('sounds/numbers/$sound'));
      await player.resume(); // force playback
      print('✅ Sound played');
    } catch (e) {
      print('⚠️ Error playing sound: $e');
    }
  }
}
