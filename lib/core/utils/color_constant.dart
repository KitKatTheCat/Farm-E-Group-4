import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color green900 = fromHex('#038b07');

  static Color green500 = fromHex('#4bae4f');

  static Color blueGray50001 = fromHex('#6f7490');

  static Color black90001 = fromHex('#000000');

  static Color black90000 = fromHex('#00000000');

  static Color gray9000a = fromHex('#0a1c232f');

  static Color blueGray90001 = fromHex('#333542');

  static Color blueGray700 = fromHex('#47495c');

  static Color blueGray900 = fromHex('#2c3050');

  static Color gray600 = fromHex('#6c6c6c');

  static Color black9000a = fromHex('#0a000000');

  static Color gray400 = fromHex('#b5b6be');

  static Color blueGray100 = fromHex('#d7d7d7');

  static Color blueGray300 = fromHex('#9a9db1');

  static Color blueGray500 = fromHex('#6f738f');

  static Color amber300 = fromHex('#f9cc4a');

  static Color gray200 = fromHex('#efefef');

  static Color black9000c = fromHex('#0c000000');

  static Color black90051 = fromHex('#51000000');

  static Color black90019 = fromHex('#19000000');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color blueGray70001 = fromHex('#474a5c');

  static Color blueGray50 = fromHex('#edeef1');

  static Color blueGray10001 = fromHex('#c7c9d0');

  static Color whiteA7001c = fromHex('#1cffffff');

  static Color blueGray10002 = fromHex('#d5d8e7');

  static Color gray50 = fromHex('#fcfcfc');

  static Color lightGreen900 = fromHex('#3e6816');

  static Color black900 = fromHex('#15070a');

  static Color black90028 = fromHex('#28000000');

  static Color blueGray5001 = fromHex('#eeeef2');

  static Color gray9000a01 = fromHex('#0a1c2430');

  static Color gray60002 = fromHex('#75788a');

  static Color blueGray200 = fromHex('#aeb0c0');

  static Color black9002b = fromHex('#2b000000');

  static Color gray60001 = fromHex('#757889');

  static Color blueGray400 = fromHex('#888888');

  static Color blueGray600 = fromHex('#52588a');

  static Color black9006b = fromHex('#6b000000');

  static Color gray900 = fromHex('#222325');

  static Color gray30003 = fromHex('#dddee3');

  static Color gray300 = fromHex('#e2e3e8');

  static Color gray30002 = fromHex('#dddee2');

  static Color gray60003 = fromHex('#7a7c85');

  static Color gray30001 = fromHex('#dcdce4');

  static Color gray100 = fromHex('#f7f7f7');

  static Color black90075 = fromHex('#75000000');

  static Color whiteA70001 = fromHex('#fefeff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
