import 'package:dependency_injection_dart/character.dart';
import 'package:dependency_injection_dart/weapon.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

// mock the dependency
class MockWeapon extends Mock implements Weapon {}

void main() {
  late final Weapon weapon;
  late final Character character;

  final tName = 'test character';
  final tException = 'test exception';

  setUpAll(() {
    weapon = MockWeapon();
    character = Character(
      name: tName,
      weapon: weapon,
    );
  });

  group('attack', () {
    test(
      'should complete successfully when call to [weapon.inflictDamage] succeed',
      () async {
        // hijacts the mock dependency return value
        when(() => weapon.inflictDamage()).thenAnswer(
          (_) async {},
        );

        final result = character.attack();

        // expect the tested unit with mocked dependency
        expect(() async => await result, isA<void>());

        verify(() => weapon.inflictDamage()).called(1);
        verifyNoMoreInteractions(weapon);
      },
    );

    test(
      'should also complete successfully when call to [weapon.inflictDamage] failed',
      () async {
        // hijacts the mock dependency return value
        when(() => weapon.inflictDamage()).thenThrow(
          (_) async => tException,
        );

        final result = character.attack();

        // expect the tested unit with mocked dependency
        expect(() async => await result, isA<void>());

        verify(() => weapon.inflictDamage()).called(1);
        verifyNoMoreInteractions(weapon);
      },
    );
  });
}
