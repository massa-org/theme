/// Map type string to json converter name. Mainly usable in generator
const Map<String, String> typeConverterMapping = {
  // Key type is string because Type does't support nullability :[
  // Value type is string because we can't import material to generator :[
  // So say goodbye to static type checks and refactoring
  'Color?': 'NullableColorConverter',
  'Color': 'ColorConverter',
  'TextStyle': 'TextStyleConverter',
  'TextStyle?': 'NullableTextStyleConverter',
  'TextDecoration': 'TextDecorationConverter',
  'TextDecoration?': 'NullableTextDecorationConverter',
};