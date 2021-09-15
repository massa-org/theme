// ignore_for_file: annotate_overrides, unused_element

part of 'theme.dart';

// **************************************************************************
// ThemeGenerator
// **************************************************************************

abstract class _$_ThemeDataBase {
  /* ALL ${e.type} get ${e.name}; */
  Color? get backgroundColor;
  Color? get addressBarColor;
  Color? get addressBarBackgroundColor;

  const _$_ThemeDataBase();
  _$_ThemeData combine(_$_ThemeDataBase? other) {
    if (other == null) return this as _$_ThemeData;
    if (other is! _$_ThemeDataBase) throw 'Wtf is goning on';
    return _$_ThemeData(
      /* POSITIONAL other.${e.name} ?? ${e.name}, */
      other.backgroundColor ?? backgroundColor,
      other.addressBarColor ?? addressBarColor,
      /* NAMED ${e.name}: other.${e.name} ?? ${e.name},*/
      addressBarBackgroundColor:
          other.addressBarBackgroundColor ?? addressBarBackgroundColor,
    );
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(includeIfNull: true)
@ColorConverter()
class _$_ThemeData extends _ThemeData {
  /* ALL final ${e.type} ${e.name}; */
  final Color? backgroundColor;
  final Color? addressBarColor;
  final Color? addressBarBackgroundColor;
  const _$_ThemeData(
    /* REQUIRED this.${e.name}, */
    this.backgroundColor,
    this.addressBarColor,
    /* OPTIONAL [
      this.${e.name},
    ]*/

    /* NAMED {
      this.${e.name},
    } */
    {
    this.addressBarBackgroundColor,
  }) : super._();

  Map<String, dynamic> toJson() => _$$_ThemeDataToJson(this);
}

class _$Theme extends BlocProvider<ThemeDataCubit<_ThemeData>> {
  _$Theme.fromJson([Map<String, dynamic>? json])
      : super(
          create: ThemeDataCubit.getCreationFn(
            json == null ? null : _ThemeData.fromJson(json),
            (colorScheme) => _ThemeData.from(colorScheme),
          ),
        );

  // add ability to style components in place
  _$Theme({
    /*ALL ${e.type?} ${e.name},*/
    Color? backgroundColor,
    Color? addressBarColor,
    Color? addressBarBackgroundColor,
    required Widget child,
  }) : super(
          create: ThemeDataCubit.getCreationFn(
            _ThemeData(
              /*POSITIONAL ${e.name}*/
              backgroundColor,
              addressBarColor,
              /*NAMED ${e.name}: ${e.name},*/
              addressBarBackgroundColor: addressBarBackgroundColor,
            ),
            (colorScheme) => _ThemeData.from(colorScheme),
          ),
          child: child,
        );
  // think how to rewrite this
  static void updateWithJson(BuildContext context, Map<String, dynamic> json) {
    final p = context.read<ThemeDataCubit<_ThemeData>>();
    p.emit(p.state.combine(_ThemeData.fromJson(json)));
  }

  static _ThemeData of(BuildContext context) => watch(context);

  static R select<R>(BuildContext context, R Function(_ThemeData v) selector) =>
      context
          .select((ThemeDataCubit<_ThemeData> value) => selector(value.state));
  static _ThemeData watch(BuildContext context) =>
      context.watch<ThemeDataCubit<_ThemeData>>().state;

  static _ThemeData read(BuildContext context) =>
      context.read<ThemeDataCubit<_ThemeData>>().state;
}

abstract class _$_ThemeData2Base {
  /* ALL ${e.type} get ${e.name}; */
  Color? get backgroundColor;
  Color? get addressBarColor;
  Color? get addressBarBackgroundColor;
  TextDecoration? get decor;
  TextStyle? get style;

  const _$_ThemeData2Base();
  _$_ThemeData2 combine(_$_ThemeData2Base? other) {
    if (other == null) return this as _$_ThemeData2;
    if (other is! _$_ThemeData2Base) throw 'Wtf is goning on';
    return _$_ThemeData2(
      /* POSITIONAL other.${e.name} ?? ${e.name}, */
      other.backgroundColor ?? backgroundColor,
      other.addressBarColor ?? addressBarColor,
      /* NAMED ${e.name}: other.${e.name} ?? ${e.name},*/
      addressBarBackgroundColor:
          other.addressBarBackgroundColor ?? addressBarBackgroundColor,
      decor: other.decor ?? decor,
      style: other.style ?? style,
    );
  }

  Map<String, dynamic> toJson();
}

@JsonSerializable(includeIfNull: true)
@ColorConverter()
@TextDecorationConverter()
@TextStyleConverter()
class _$_ThemeData2 extends _ThemeData2 {
  /* ALL final ${e.type} ${e.name}; */
  final Color? backgroundColor;
  final Color? addressBarColor;
  final Color? addressBarBackgroundColor;
  final TextDecoration? decor;
  final TextStyle? style;
  const _$_ThemeData2(
    /* REQUIRED this.${e.name}, */
    this.backgroundColor,
    this.addressBarColor,
    /* OPTIONAL [
      this.${e.name},
    ]*/

    /* NAMED {
      this.${e.name},
    } */
    {
    this.addressBarBackgroundColor,
    this.decor,
    this.style,
  }) : super._();

  Map<String, dynamic> toJson() => _$$_ThemeData2ToJson(this);
}

class Theme2 extends BlocProvider<ThemeDataCubit<_ThemeData2>> {
  Theme2.fromJson([Map<String, dynamic>? json])
      : super(
          create: ThemeDataCubit.getCreationFn(
            json == null ? null : _ThemeData2.fromJson(json),
            (colorScheme) => _ThemeData2.from(colorScheme),
          ),
        );

  // add ability to style components in place
  Theme2({
    /*ALL ${e.type?} ${e.name},*/
    Color? backgroundColor,
    Color? addressBarColor,
    Color? addressBarBackgroundColor,
    TextDecoration? decor,
    TextStyle? style,
    required Widget child,
  }) : super(
          create: ThemeDataCubit.getCreationFn(
            _ThemeData2(
              /*POSITIONAL ${e.name}*/
              backgroundColor,
              addressBarColor,
              /*NAMED ${e.name}: ${e.name},*/
              addressBarBackgroundColor: addressBarBackgroundColor,
              decor: decor,
              style: style,
            ),
            (colorScheme) => _ThemeData2.from(colorScheme),
          ),
          child: child,
        );
  // think how to rewrite this
  static void updateWithJson(BuildContext context, Map<String, dynamic> json) {
    final p = context.read<ThemeDataCubit<_ThemeData2>>();
    p.emit(p.state.combine(_ThemeData2.fromJson(json)));
  }

  static _ThemeData2 of(BuildContext context) => watch(context);

  static R select<R>(
          BuildContext context, R Function(_ThemeData2 v) selector) =>
      context
          .select((ThemeDataCubit<_ThemeData2> value) => selector(value.state));
  static _ThemeData2 watch(BuildContext context) =>
      context.watch<ThemeDataCubit<_ThemeData2>>().state;

  static _ThemeData2 read(BuildContext context) =>
      context.read<ThemeDataCubit<_ThemeData2>>().state;
}
