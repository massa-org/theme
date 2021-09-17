import 'package:analyzer/dart/element/element.dart';

import 'converters.dart';

String enrichTemplate({
  required String className,
  required List<ParameterElement> required,
  required List<ParameterElement> optional,
  required List<ParameterElement> named,
  required String? builderName,
}) {
  final all = required.followedBy(optional).followedBy(named).toList();
  final positional = required.followedBy(optional).toList();

  final String argumentName = '_${className}Arguments';
  final String _builderName = builderName ?? '${className}Builder';

  return '''
// generate
@JsonSerializable()
${all.map((e) => converters[e.type.toString()]).where((e) => e != null).toSet().join('\n')}
class $argumentName {
  /*ALL final \${e.type} \${e.name};*/
  ${all.map((e) => 'final ${e.type} ${e.name};').join('\n')}

  $argumentName(
    /*REQUIRED this.\${e.name}, */
    ${required.map((e) => 'this.${e.name},').join('\n')}
    /*OPTIONAL this.\${e.name}, */
    ${optional.isNotEmpty ? '[${optional.map((e) => 'this.${e.name},').join('\n')}]' : ''}
    /*NAMED this.\${e.name}, */
    ${named.isNotEmpty ? '{${named.map((e) => 'this.${e.name},').join('\n')}}' : ''}
  );

  factory $argumentName.fromJson(Map<String,dynamic> json) =>
      _\$${argumentName.substring(1)}FromJson(json);
}

class $_builderName extends JsonWidgetBuilder {
  $_builderName(this.arguments) : super(numSupportedChildren: 0);

  static const type = '$className';
  final $argumentName arguments;

  static $_builderName? fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) {
    if (map == null) return null;

    return $_builderName($argumentName.fromJson(<String,dynamic>{...map}));
  }

  @override
  Widget buildCustom({
    Widget Function(BuildContext context, Widget child)? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    return $className(
      /* POSITIONAL arguments.\${e.name},*/
      ${positional.map((e) => 'arguments.${e.name},').join('\n')}
      /* NAMED \${e.name}: arguments.\${e.name},*/
      ${named.map((e) => '${e.name}: arguments.${e.name},').join('\n')}
      key: key,
    );
  }

  static void register(){
    JsonWidgetRegistry.instance.registerCustomBuilder(
      $_builderName.type,
      JsonWidgetBuilderContainer(
        builder: $_builderName.fromDynamic,
        // schemaId: $_builderName.id, // this is optional
      ),
    );
  }
}
''';
}
