import 'dart:ui';

abstract class BaseColors {
  const BaseColors();

  Color get primary => const Color.fromRGBO(1, 192, 0, 1);

  Color get stroke => const Color.fromRGBO(50, 58, 70, 1);
  Color get backcolor => const Color.fromRGBO(243, 243, 247, 1);

  Color get white => const Color.fromRGBO(255, 255, 255, 1);
  Color get blackGreen => const Color.fromRGBO(22, 101, 22, 1);
  Color get green => const Color.fromRGBO(1, 127, 0, 1);
  Color get grey => const Color.fromRGBO(121,129,121, 1);
  Color get icongrey => const Color.fromRGBO(187, 192, 187, 1);
  Color get iconcolor => const Color.fromRGBO(187, 192, 187, 1);
  Color get red => const Color.fromRGBO(255, 97, 45, 1);

  Color get black => const Color.fromRGBO(0, 0, 0, 1);
  Color get text900 => const Color.fromRGBO(0, 0, 0, 1);
  Color get text800 => const Color.fromRGBO(54, 69, 79, 1);
  Color get text700 => const Color.fromRGBO(51, 51, 51, 1);
 
  Color get textSecondary => const Color.fromRGBO(137, 143, 147, 1);

  Color get background;
}
