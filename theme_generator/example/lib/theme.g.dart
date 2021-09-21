// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ThemeData _$$_ThemeDataFromJson(Map<String, dynamic> json) => _$_ThemeData(
      const NullableColorConverter()
          .fromJson(json['backgroundColor'] as String?),
      const NullableColorConverter()
          .fromJson(json['addressBarColor'] as String?),
      addressBarBackgroundColor: const NullableColorConverter()
          .fromJson(json['addressBarBackgroundColor'] as String?),
    );

Map<String, dynamic> _$$_ThemeDataToJson(_$_ThemeData instance) =>
    <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(instance.backgroundColor),
      'addressBarColor':
          const NullableColorConverter().toJson(instance.addressBarColor),
      'addressBarBackgroundColor': const NullableColorConverter()
          .toJson(instance.addressBarBackgroundColor),
    };

_$_ThemeData2 _$$_ThemeData2FromJson(Map<String, dynamic> json) =>
    _$_ThemeData2(
      const NullableColorConverter()
          .fromJson(json['backgroundColor'] as String?),
      const NullableColorConverter()
          .fromJson(json['addressBarColor'] as String?),
      addressBarBackgroundColor: const NullableColorConverter()
          .fromJson(json['addressBarBackgroundColor'] as String?),
      decor: const NullableTextDecorationConverter()
          .fromJson(json['decor'] as String?),
      style: const NullableTextStyleConverter()
          .fromJson(json['style'] as Map<String, dynamic>?),
    );

Map<String, dynamic> _$$_ThemeData2ToJson(_$_ThemeData2 instance) =>
    <String, dynamic>{
      'backgroundColor':
          const NullableColorConverter().toJson(instance.backgroundColor),
      'addressBarColor':
          const NullableColorConverter().toJson(instance.addressBarColor),
      'addressBarBackgroundColor': const NullableColorConverter()
          .toJson(instance.addressBarBackgroundColor),
      'decor': const NullableTextDecorationConverter().toJson(instance.decor),
      'style': const NullableTextStyleConverter().toJson(instance.style),
    };
