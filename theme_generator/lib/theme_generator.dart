library theme_generator;

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:theme_annotation/annotation.dart';
import 'package:theme_generator/template.dart';

class ThemeGenerator extends GeneratorForAnnotation<StyleData> {
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

    return enrichTemplate(
      className: element.name,
      required:
          constructor.parameters.where((e) => e.isRequiredPositional).toList(),
      optional:
          constructor.parameters.where((e) => e.isOptionalPositional).toList(),
      named: constructor.parameters.where((e) => e.isNamed).toList(),
      accesorName: annotation.peek('themeName')?.stringValue,
    );
  }
}

Builder generateTheme(BuilderOptions options) => PartBuilder(
      [ThemeGenerator()],
      '.theme.dart',
      header: '// ignore_for_file: annotate_overrides, unused_element',
    );
