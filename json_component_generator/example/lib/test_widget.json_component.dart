// ignore_for_file: annotate_overrides, unused_element

part of 'test_widget.dart';

// **************************************************************************
// ThemeGenerator
// **************************************************************************

// generate
@JsonSerializable()
@NullableColorConverter()
class _SomeTextWidgetArguments {
  /*ALL final ${e.type} ${e.name};*/
  final String html;
  final Color? color;

  _SomeTextWidgetArguments(
    /*REQUIRED this.${e.name}, */
    this.html,
    /*OPTIONAL this.${e.name}, */

    /*NAMED this.${e.name}, */
    {
    this.color,
  });

  factory _SomeTextWidgetArguments.fromJson(Map<String, dynamic> json) =>
      _$SomeTextWidgetArgumentsFromJson(json);
}

class SomeTextWidgetBuilder extends JsonWidgetBuilder {
  SomeTextWidgetBuilder(this.arguments) : super(numSupportedChildren: 0);

  static const type = 'SomeTextWidget';
  final _SomeTextWidgetArguments arguments;

  static SomeTextWidgetBuilder? fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) {
    if (map == null) return null;

    return SomeTextWidgetBuilder(
        _SomeTextWidgetArguments.fromJson(<String, dynamic>{...map}));
  }

  @override
  Widget buildCustom({
    Widget Function(BuildContext context, Widget child)? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    return SomeTextWidget(
      /* POSITIONAL arguments.${e.name},*/
      arguments.html,
      /* NAMED ${e.name}: arguments.${e.name},*/
      color: arguments.color,
      key: key,
    );
  }

  static void register() {
    JsonWidgetRegistry.instance.registerCustomBuilder(
      SomeTextWidgetBuilder.type,
      JsonWidgetBuilderContainer(
        builder: SomeTextWidgetBuilder.fromDynamic,
        // schemaId: SomeTextWidgetBuilder.id, // this is optional
      ),
    );
  }
}
