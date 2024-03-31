import 'package:dependency_injection_dart/weapon.dart';

class Character {
  const Character({
    required this.name,
    required this.weaponName,
    required this.weaponDamage,
  });

  final String name;
  final String weaponName;
  final double weaponDamage;

  void attack() {
    final weapon = Weapon(
      name: weaponName,
      damage: weaponDamage,
    );

    print('$name attacking...');
    weapon.inflictDamage();
  }
}
