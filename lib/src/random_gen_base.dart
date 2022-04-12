import 'dart:math';

class RandomGenerator {

  static final _alphaLower = List.generate(26, (index) => 65 + index).map((e) => String.fromCharCode(e));
  static final _alphaUpper = List.generate(26, (index) => 97 + index).map((e) => String.fromCharCode(e));
  static final _numbers = List.generate(10, (index) => index.toString());

  /// Quickly generate a random password.
  static String password({
    int length = 16,
    bool includeLowercase = true,
    bool includeUppercase = true,
    bool includeNumeric = true,
    bool includeSymbols = true,
    List<String> symbols = const['@', '!', '%', '*', '(', ')', ',', '.', '?', '/', ';', '<', '>']
  }) {
    assert(includeLowercase || includeUppercase || includeNumeric || includeSymbols);

    final chars = <String>[
      if(includeLowercase) ..._alphaLower,
      if(includeUppercase) ..._alphaUpper, 
      if(includeNumeric) ..._numbers, 
      if(includeSymbols) ...symbols
    ];

    final random = Random();

    var password = '';
    for(int i = 0; i < length; i++) {
      password += chars[random.nextInt(chars.length)];
    }

    return password;
  }
}