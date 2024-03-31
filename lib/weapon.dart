class Weapon {
  const Weapon({
    required this.name,
    required this.damage,
  });

  final String name;
  final double damage;

  Future<void> inflictDamage() async {
    Future.delayed(
      Duration(seconds: 1),
      () => print('$name inflicted $damage damage!'),
    );
  }
}
