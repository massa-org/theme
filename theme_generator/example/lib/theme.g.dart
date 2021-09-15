// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThemeData _$$_ThemeDataFromJson(Map<String, dynamic> json) => _$_ThemeData(
      const ColorConverter().fromJson(json['backgroundColor'] as String?),
      const ColorConverter().fromJson(json['addressBarColor'] as String?),
      addressBarBackgroundColor: const ColorConverter()
          .fromJson(json['addressBarBackgroundColor'] as String?),
    );

Map<String, dynamic> _$$_ThemeDataToJson(_$_ThemeData instance) =>
    <String, dynamic>{
      'backgroundColor':
          const ColorConverter().toJson(instance.backgroundColor),
      'addressBarColor':
          const ColorConverter().toJson(instance.addressBarColor),
      'addressBarBackgroundColor':
          const ColorConverter().toJson(instance.addressBarBackgroundColor),
    };

_$_ThemeData2 _$$_ThemeData2FromJson(Map<String, dynamic> json) =>
    _$_ThemeData2(
      const ColorConverter().fromJson(json['backgroundColor'] as String?),
      const ColorConverter().fromJson(json['addressBarColor'] as String?),
      addressBarBackgroundColor: const ColorConverter()
          .fromJson(json['addressBarBackgroundColor'] as String?),
      decor: const TextDecorationConverter()
          .fromJson(json['decor'] as List<String>?),
      style: const TextStyleConverter()
          .fromJson(json['style'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_ThemeData2ToJson(_$_ThemeData2 instance) =>
    <String, dynamic>{
      'backgroundColor':
          const ColorConverter().toJson(instance.backgroundColor),
      'addressBarColor':
          const ColorConverter().toJson(instance.addressBarColor),
      'addressBarBackgroundColor':
          const ColorConverter().toJson(instance.addressBarBackgroundColor),
      'decor': const TextDecorationConverter().toJson(instance.decor),
      'style': const TextStyleConverter().toJson(instance.style),
    };
