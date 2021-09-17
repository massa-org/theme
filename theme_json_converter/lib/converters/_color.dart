part of theme_json_converter;

class NullableColorConverter implements JsonConverter<Color?, String?> {
  const NullableColorConverter();

  @override
  Color? fromJson(String? json) {
    if (json == null) return null;
    if (json.startsWith('#')) {
      json = json.substring(1);

      if (json.length == 6) {
        /// RRGGBB format
        return Color(
          int.parse('ff' + json, radix: 16),
        );
      } else if (json.length == 8) {
        /// AARRGGBB format
        return Color(
          int.parse(json, radix: 16),
        );
      }
    }

    throw Exception('Incorrect color format');
  }

  @override
  String? toJson(Color? object) {
    if (object == null) return null;
    return '#' + object.value.toRadixString(16).padLeft(8, '0');
  }
}

class ColorConverter implements JsonConverter<Color, String> {
  const ColorConverter();

  @override
  Color fromJson(String json) => const NullableColorConverter().fromJson(json)!;

  @override
  String toJson(Color object) => const NullableColorConverter().toJson(object)!;
}
