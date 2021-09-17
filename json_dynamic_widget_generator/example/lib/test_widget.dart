import 'package:flutter/material.dart';
import 'package:json_dynamic_widget_annotation/json_dynamic_widget_annotation.dart';

part 'test_widget.g.dart';
part 'test_widget.json_component.dart';

@JsonDynamicWidgetAnnotation()
class SomeTextWidget extends StatelessWidget {
  const SomeTextWidget(this.html, {this.color, Key? key}) : super(key: key);

  final String html;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      html,
      style: TextStyle(color: color),
    );
  }
}

@JsonDynamicWidgetAnnotation()
class WChild extends StatelessWidget {
  const WChild({Widget? child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

@JsonDynamicWidgetAnnotation()
class WRChild extends StatelessWidget {
  const WRChild({required Widget child, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

@JsonDynamicWidgetAnnotation()
class WChildren extends StatelessWidget {
  const WChildren({List<Widget> children = const [], Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
