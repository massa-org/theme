part of theme_json;

class TextDecorationConverter
    implements JsonConverter<TextDecoration?, List<String>?> {
  static const _tdm = {
    'none': TextDecoration.none,
    'lineThrough': TextDecoration.lineThrough,
    'overline': TextDecoration.overline,
    'underline': TextDecoration.underline,
  };

  const TextDecorationConverter();

  @override
  TextDecoration? fromJson(List<String>? json) {
    if (json == null) return null;
    return TextDecoration.combine(json.map((e) => _tdm[e]!).toList());
  }

  @override
  List<String>? toJson(TextDecoration? object) {
    if (object == null) return null;
    return _tdm.entries
        .where((e) => object.contains(e.value))
        .map((e) => e.key)
        .toList();
  }
}
