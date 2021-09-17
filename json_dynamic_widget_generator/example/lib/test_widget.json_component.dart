// ignore_for_file: annotate_overrides, unused_element

part of 'test_widget.dart';

// **************************************************************************
// JsonComponentGenerator
// **************************************************************************

// generate for widget with arguments
@JsonSerializable(createToJson: false)
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

  static const type = 'some_text_widget';
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
      ),
    );
  }
}

// generate for widget without arguments
class WChildBuilder extends JsonWidgetBuilder {
  WChildBuilder() : super(numSupportedChildren: 0);

  static const type = 'w_child';

  static WChildBuilder? fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) {
    if (map == null) return null;

    return WChildBuilder();
  }

  @override
  Widget buildCustom({
    Widget Function(BuildContext context, Widget child)? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final child = (data.children?.isEmpty ?? true)
        ? null
        : data.children!.first
            .build(context: context, childBuilder: childBuilder);

    return WChild(
      key: key,
      child: child,
    );
  }

  static void register() {
    JsonWidgetRegistry.instance.registerCustomBuilder(
      WChildBuilder.type,
      JsonWidgetBuilderContainer(
        builder: WChildBuilder.fromDynamic,
      ),
    );
  }
}

// generate for widget without arguments
class WRChildBuilder extends JsonWidgetBuilder {
  WRChildBuilder() : super(numSupportedChildren: 0);

  static const type = 'w_r_child';

  static WRChildBuilder? fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) {
    if (map == null) return null;

    return WRChildBuilder();
  }

  @override
  Widget buildCustom({
    Widget Function(BuildContext context, Widget child)? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final child =
        getChild(data).build(context: context, childBuilder: childBuilder);

    return WRChild(
      key: key,
      child: child,
    );
  }

  static void register() {
    JsonWidgetRegistry.instance.registerCustomBuilder(
      WRChildBuilder.type,
      JsonWidgetBuilderContainer(
        builder: WRChildBuilder.fromDynamic,
      ),
    );
  }
}

// generate for widget without arguments
class WChildrenBuilder extends JsonWidgetBuilder {
  WChildrenBuilder() : super(numSupportedChildren: 0);

  static const type = 'w_children';

  static WChildrenBuilder? fromDynamic(
    dynamic map, {
    JsonWidgetRegistry? registry,
  }) {
    if (map == null) return null;

    return WChildrenBuilder();
  }

  @override
  Widget buildCustom({
    Widget Function(BuildContext context, Widget child)? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  }) {
    final children = data.children
            ?.map(
              (e) => e.build(
                context: context,
                childBuilder: childBuilder,
              ),
            )
            .toList() ??
        <Widget>[];

    return WChildren(
      key: key,
      children: children,
    );
  }

  static void register() {
    JsonWidgetRegistry.instance.registerCustomBuilder(
      WChildrenBuilder.type,
      JsonWidgetBuilderContainer(
        builder: WChildrenBuilder.fromDynamic,
      ),
    );
  }
}
