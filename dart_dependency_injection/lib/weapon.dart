abstract class Weapon {
  Future<void> inflictDamage();
}

class Sword implements Weapon {
  const Sword({
    required this.name,
    required this.damage,
  });

  final String name;
  final double damage;

  @override
  Future<void> inflictDamage() async {
    try {
      if (damage <= 0) {
        throw Exception('No damage has inflicted...');
      }

      Future.delayed(
        Duration(seconds: 1),
        () => print('$name inflicted $damage damage!'),
      );
    } catch (e) {
      rethrow;
    }
  }
}

class Gun implements Weapon {
  Gun({
    required this.type,
    required this.damagePerSecond,
    required this.durations,
  });

  final String type;
  final double damagePerSecond;
  final int durations;

  @override
  Future<void> inflictDamage() async {
    for (int i = 1; i <= durations; i++) {
      await Future.delayed(
        Duration(seconds: 1),
        () => print('[second $i - inflicted $damagePerSecond...]'),
      );
    }

    final totalDamage = damagePerSecond * durations;
    print('$type inflicted total of $totalDamage damage!');
  }
}
