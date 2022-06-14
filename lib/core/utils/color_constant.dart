import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray500 = fromHex('#9b9b9b');

  static Color red700 = fromHex('#db3022');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color gray900 = fromHex('#222222');

  static Color deepOrangeA700 = fromHex('#f01f0e');

  static Color black90019 = fromHex('#19000000');

  static Color black90014 = fromHex('#14000000');

  static Color red8003f = fromHex('#3fd32525');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray50 = fromHex('#f9f9f9');

  static Color black9001e = fromHex('#1e000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
