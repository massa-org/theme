import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:theme_generator/converters.dart';

String enrichTemplate({
  required String className,
  required List<ParameterElement> required,
  required List<ParameterElement> optional,
  required List<ParameterElement> named,
  required String? accesorName,
}) {
  final all = required.followedBy(optional).followedBy(named).toList();
  final positional = required.followedBy(optional).toList();
  final String baseName = '_\$${className}Base';
  final String dataHolderName = '_\$$className';
  final String providerName =  accesorName ?? '_\$Theme';

  

  return '''
abstract class $baseName {
  /* ALL \${e.type} get \${e.name}; */
  ${all.map((e) => '${e.type} get ${e.name};').join('\n')}

  const $baseName();
  $dataHolderName combine($baseName? other) {
    if (other == null) return this as $dataHolderName;
    if (other is!$baseName) throw 'Wtf is goning on';
    return $dataHolderName(
      /* POSITIONAL other.\${e.name} ?? \${e.name}, */
      ${positional.map((e) => 'other.${e.name} ?? ${e.name},').join('')}
      /* NAMED \${e.name}: other.\${e.name} ?? \${e.name},*/
      ${named.map((e) => '${e.name}: other.${e.name} ?? ${e.name},').join('')}
    );
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(includeIfNull: true)
${all.map((e) => converters[e.type.toString()]).toSet().join('\n')}
class $dataHolderName extends $className {
  /* ALL final \${e.type} \${e.name}; */
  ${all.map((e) => 'final ${e.type} ${e.name};').join('\n')}


  const $dataHolderName(
    /* REQUIRED this.\${e.name}, */
    ${required.map((e) => 'this.${e.name},').join('')}
    /* OPTIONAL [
      this.\${e.name},
    ]*/
    ${optional.isEmpty ? '' : '[${optional.map((e) => 'this.${e.name},').join('')}]'}
    /* NAMED {
      this.\${e.name},
    } */
    ${named.isEmpty ? '' : '{${named.map((e) => 'this.${e.name},').join('')}}'}
  ) : super._();

  Map<String, dynamic> toJson() => _\$\$${className}ToJson(this);
}

class $providerName extends BlocProvider<ThemeDataCubit<$className>> {
  $providerName.fromJson([Map<String, dynamic>? json])
      : super(
          create: ThemeDataCubit.getCreationFn(
            json == null ? null : $className.fromJson(json),
            (colorScheme) => $className.from(colorScheme),
          ),
        );

  // add ability to style components in place
  $providerName({
    /*ALL \${e.type?} \${e.name},*/
    ${all.map((e) => '${e.type.nullabilitySuffix == NullabilitySuffix.none ? '${e.type}?' : e.type} ${e.name},').join('\n')}
    required Widget child,
  }) : super(
          create: ThemeDataCubit.getCreationFn(
            $className(
              /*POSITIONAL \${e.name}*/
              ${positional.map((e) => '${e.name},').join('')}
              /*NAMED \${e.name}: \${e.name},*/
              ${named.map((e) => '${e.name}: ${e.name},').join('')}
            ),
            (colorScheme) => $className.from(colorScheme),
          ),
          child: child,
        );

        
  // think how to rewrite this
  static void updateWithJson(BuildContext context, Map<String, dynamic> json) {
    final p = context.read<ThemeDataCubit<$className>>();
    p.emit(p.state.combine($className.fromJson(json)));
  }

  static $className of(BuildContext context) => watch(context);

  static R select<R>(BuildContext context, R Function($className v) selector) =>
      context
          .select((ThemeDataCubit<$className> value) => selector(value.state));
  static $className watch(BuildContext context) =>
      context.watch<ThemeDataCubit<$className>>().state;

  static $className read(BuildContext context) =>
      context.read<ThemeDataCubit<$className>>().state;
}
''';
}
