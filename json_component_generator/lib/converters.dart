
import 'package:theme_json/type_converter_mapping.dart';


final converters = typeConverterMapping.map((key, value) => MapEntry(key, '@$value()'));
