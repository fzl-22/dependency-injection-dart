import 'package:dependency_injection_dart/character.dart';

void main(List<String> args) {
  final roronoaZoro = Character(
    name: 'Roronoa Zoro',
    weaponName: 'Enma',
    weaponDamage: 100,
  );

  roronoaZoro.attack();
}
