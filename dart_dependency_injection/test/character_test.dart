import 'package:dependency_injection_dart/character.dart';
import 'package:dependency_injection_dart/weapon.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockWeapon extends Mock implements Weapon {}

void main() {
  late final Weapon weapon;
  late final Character character;

  final tName = 'test character';
  final tException = Exception('test exception');

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
        // stubbing -> membajak dependency sesuai output yg kita mau
        when(() => weapon.inflictDamage()).thenAnswer(
          (_) async {},
        );

        final result = character.attack();

        // assert
        expect(() async => result, isA<void>());

        verify(() => weapon.inflictDamage()).called(1);
        verifyNoMoreInteractions(weapon);
      },
    );

    test(
      'should also complete successfully when call to [weapon.inflictDamage] fails',
      () async {
        // stubbing -> membajak dependency sesuai output yg kita mau
        when(() => weapon.inflictDamage()).thenThrow(tException);

        final result = character.attack();

        // assert
        expect(() async => result, isA<void>());

        verify(() => weapon.inflictDamage()).called(1);
        verifyNoMoreInteractions(weapon);
      },
    );
  });
}
