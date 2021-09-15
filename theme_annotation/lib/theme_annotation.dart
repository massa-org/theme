// library theme_annotation;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:massa_utils/massa_utils.dart';

export 'package:flutter_bloc/flutter_bloc.dart'
    show BlocProvider, ReadContext, WatchContext, SelectContext;

export 'package:theme_json/theme_json.dart';
export 'annotation.dart';
export 'package:json_annotation/json_annotation.dart';

class ThemeDataCubit<T> extends Cubit<T> with BlocSubscriptionManager {
  static ColorScheme? colorScheme;

  ThemeDataCubit._(
    T initialState, [
    ThemeDataCubit? parentCubit,
  ]) : super(initialState) {
    if (parentCubit != null) {
      listenBlocs(
        [parentCubit],
        () {
          emit(parentCubit.state.combine(state));
        },
      );
    }
  }

  @override
  Future<void> close() async {
    await closeManager();
    return super.close();
  }

  static ThemeDataCubit<T> Function(BuildContext context) getCreationFn<T>(
    T? themeData,
    T Function(ColorScheme colorScheme) fromColorScheme,
  ) =>
      (BuildContext context) {
        ThemeDataCubit? theme;

        try {
          theme = context.read<ThemeDataCubit>();
        } catch (_) {}
        var initialTheme = theme?.state;
        initialTheme ??= fromColorScheme(ThemeDataCubit.colorScheme!);

        return ThemeDataCubit._(
          initialTheme.combine(themeData),
          theme,
        );
      };
}

