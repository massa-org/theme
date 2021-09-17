library theme_generator;

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:json_component_annotation/json_component_annotation.dart';
import 'package:source_gen/source_gen.dart';

import 'template.dart';

class ThemeGenerator extends GeneratorForAnnotation<JsonComponent> {
  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is! ClassElement) {
      throw 'Theme generation can only apply to class elements';
    }
    final constructor = element.unnamedConstructor!;

    final parameters = constructor.parameters.where(
      (e) => e.name != 'key',
    );
    return enrichTemplate(
      className: element.name,
      required: parameters.where((e) => e.isRequiredPositional).toList(),
      optional: parameters.where((e) => e.isOptionalPositional).toList(),
      named: parameters.where((e) => e.isNamed).toList(),
      builderName: annotation.peek('builderName')?.stringValue,
    );
  }
}

Builder generateJsonComponent(BuilderOptions options) => PartBuilder(
      [ThemeGenerator()],
      '.json_component.dart',
      header: '// ignore_for_file: annotate_overrides, unused_element',
    );
