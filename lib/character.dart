import 'package:dependency_injection_dart/weapon.dart';

class Character {
  const Character({
    required this.name,
    required this.weapon,
  });

  final String name;
  final Weapon weapon;

  Future<void> attack() async {
    print('$name attacking...');

    try {
      await weapon.inflictDamage();
    } catch (e) {
      print(e.toString());
    }
  }
}
