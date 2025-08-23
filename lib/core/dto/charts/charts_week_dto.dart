import "dart:ui";

class ChartsWeekDTO {
  ChartsWeekDTO({
    required this.name,
    required this.color,
    required this.data,
  });

  final String name;
  final Color color;
  final List<int> data;
}
