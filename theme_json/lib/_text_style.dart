part of theme_json;


class TextStyleConverter
    implements JsonConverter<TextStyle?, Map<String, dynamic>?> {
  const TextStyleConverter();

  @override
  TextStyle? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;

    const colorConverter = ColorConverter();
    const textDecorationConverter = TextDecorationConverter();
    return TextStyle(
      fontSize: (json['fontSize'] as num?)?.toDouble(),
      fontWeight: jsonToEnum(FontWeight.values, json['fontWeight']),
      color: colorConverter.fromJson(json['color']),
      backgroundColor: colorConverter.fromJson(json['backgroundColor']),
      fontFamily: json['fontFamily'],
      decoration: textDecorationConverter.fromJson(json['decoration']),
      decorationColor: colorConverter.fromJson(json['decorationColor']),
      decorationThickness: (json['decorationThickness'] as num?)?.toDouble(),
      decorationStyle:
          jsonToEnum(TextDecorationStyle.values, json['decorationStyle']),
      wordSpacing: (json['wordSpacing'] as num?)?.toDouble(),
      letterSpacing: (json['letterSpacing'] as num?)?.toDouble(),
      height: (json['height'] as num?)?.toDouble(),
    );
  }

  @override
  Map<String, dynamic>? toJson(TextStyle? object) {
    if (object == null) return null;

    const colorConverter = ColorConverter();
    const textDecorationConverter = TextDecorationConverter();

    return {
      'fontSize': object.fontSize,
      'fontWeight': jsonFromEnum(object.fontWeight),
      'fontFamily': object.fontFamily,
      'color': colorConverter.toJson(object.color),
      'backgroundColor': colorConverter.toJson(object.backgroundColor),
      'decoration': textDecorationConverter.toJson(object.decoration),
      'decorationColor': colorConverter.toJson(object.decorationColor),
      'decorationThickness': object.decorationThickness,
      'decorationStyle': jsonFromEnum(object.decorationStyle),
      'wordSpacing': object.wordSpacing,
      'letterSpacing': object.letterSpacing,
      'height': object.height,
    };
  }
}
