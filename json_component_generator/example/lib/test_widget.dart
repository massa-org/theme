import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:json_component_annotation/json_component_annotation.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:theme_json/theme_json.dart';

part 'test_widget.g.dart';
part 'test_widget.json_component.dart';

@JsonComponent()
class SomeTextWidget extends StatelessWidget {
  const SomeTextWidget(this.html, {this.color, Key? key}) : super(key: key);

  final String html;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(html,style: TextStyle(color: color),);
  }
}
