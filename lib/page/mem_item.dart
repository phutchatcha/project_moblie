
class memItem{
  final int id;
  final String name;
  final String imagecut;
  final String image;
  final List history;

  memItem({
    required this.id,
    required this.name,
    required this.imagecut,
    required this.image,
    required this.history,

  });
  @override
  String toString() {
    return '$name';
  }
}