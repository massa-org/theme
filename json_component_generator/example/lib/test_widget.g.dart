// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_widget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SomeTextWidgetArguments _$SomeTextWidgetArgumentsFromJson(
        Map<String, dynamic> json) =>
    _SomeTextWidgetArguments(
      json['html'] as String,
      color: const NullableColorConverter().fromJson(json['color'] as String?),
    );

Map<String, dynamic> _$SomeTextWidgetArgumentsToJson(
        _SomeTextWidgetArguments instance) =>
    <String, dynamic>{
      'html': instance.html,
      'color': const NullableColorConverter().toJson(instance.color),
    };
