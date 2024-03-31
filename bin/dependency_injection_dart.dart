import 'package:dependency_injection_dart/character.dart';
import 'package:dependency_injection_dart/weapon.dart';

void main(List<String> args) async {
  final enma = Sword(
    name: 'Enma',
    damage: 100,
  );

  final roronoaZoro = Character(
    name: 'Roronoa Zoro',
    weapon: enma,
  );

  final gatlingGun = Gun(
    type: 'Machine Gun',
    damagePerSecond: 15,
    durations: 5,
  );

  final barretWallace = Character(
    name: 'Barret Wallace',
    weapon: gatlingGun,
  );

  await roronoaZoro.attack();

  print('');

  await barretWallace.attack();
}
