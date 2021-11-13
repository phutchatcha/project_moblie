
class albumItem{
  final int id;
  final String name;
  final String image;
  final List music;

  albumItem({
    required this.id,
    required this.name,
    required this.image,
    required this.music,

  });
  @override
  String toString() {
    return 'Album : $name';
  }
}