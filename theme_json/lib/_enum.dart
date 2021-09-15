part of theme_json;

T? jsonToEnum<T>(List<T> values, String? json) {
  if (json == null) return null;
  return values.firstWhere((e) => describeEnum(e as Object) == json);
}

String? jsonFromEnum(Object? enumEntry) {
  if (enumEntry == null) return null;
  return describeEnum(enumEntry);
}
