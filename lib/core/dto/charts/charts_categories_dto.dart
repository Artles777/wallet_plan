import "dart:ui";

class ChartsCategoriesDTO {
  ChartsCategoriesDTO({
    required this.name,
    required this.color,
    required this.data,
  });

  final String name;
  final Color color;
  final double data;
}
