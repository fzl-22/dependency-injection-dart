import 'package:dependency_injection_dart/weapon.dart';

class Character {
  const Character({
    required this.name,
    required this.weapon,
  });

  final String name;
  final Weapon weapon;

  void attack() {
    print('$name attacking...');
    weapon.inflictDamage();
  }
}
