class Weapon {
  const Weapon({
    required this.name,
    required this.damage,
  });

  final String name;
  final double damage;

  Future<void> inflictDamage() async {
    Future.delayed(
      Duration(seconds: 3),
      () => print('$name inflicted $damage damage!'),
    );
  }
}
