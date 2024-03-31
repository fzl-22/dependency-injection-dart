import 'package:dependency_injection_dart/character.dart';
import 'package:dependency_injection_dart/weapon.dart';

void main(List<String> args) {
  final enma = Weapon(
    name: 'Enma',
    damage: 100,
  );

  final roronoaZoro = Character(
    name: 'Roronoa Zoro',
    weapon: enma,
  );

  roronoaZoro.attack();
}
