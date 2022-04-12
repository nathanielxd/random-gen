import 'dart:math';

class RandomGenerator {

  static final _alphaLower = List.generate(26, (index) => 65 + index).map((e) => String.fromCharCode(e));
  static final _alphaUpper = List.generate(26, (index) => 97 + index).map((e) => String.fromCharCode(e));
  static final _numbers = List.generate(10, (index) => index.toString());
  static final _symbols = ['@', '!', '%', '*', '(', ')', ',', '.', '?', '/', ';', '<', '>'];

  static String password({
    int length = 16
  }) {
    final chars = <String>[..._alphaLower, ..._alphaUpper, ..._numbers, ..._symbols];
    final random = Random();

    var password = '';
    for(int i = 0; i < length; i++) {
      password += chars[random.nextInt(chars.length)];
    }

    return password;
  }
}