import 'package:dependency_injection_dart/character.dart';
import 'package:dependency_injection_dart/weapon.dart';

void main(List<String> args) {
  final enma = Sword(
    name: 'Enma',
    damage: 0,
  );

  final gatlingGun = Gun(
    type: 'Gatling Gun',
    damagePerSecond: 10,
    durations: 5,
  );

  Character roronoaZoro = Character(
    name: 'Roronoa Zoro',
    weapon: enma,
  );

  roronoaZoro.attack();

  roronoaZoro = Character(
    name: 'Roronoa Zoro',
    weapon: gatlingGun,
  );

  roronoaZoro.attack();
}
