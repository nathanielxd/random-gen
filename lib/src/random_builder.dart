import 'package:random_gen/random_gen.dart';

class RandomBuilder {

  int _length = 16;
  bool _useLowercase = true;
  bool _useUppercase = true;
  bool _useNumeric = true;
  bool _useSymbols = true;
  var _symbols = const['@', '!', '%', '*', '(', ')', ',', '.', '?', '/', ';', '<', '>'];

  /// Set the length of the generated string. Default is `16`.
  void withLength(int length) => _length = length;

  /// Set whether to use lowercase letters from 'a' to 'z'. Default is `true`.
  void withLowercase([bool value = true]) => _useLowercase = value;

  /// Set whether to use uppercase letters from 'A' to 'Z'. Default is `true`.
  void withUppercase([bool value = true]) => _useUppercase = value;

  /// Set whether to use numbers from '0' to '9'. Default is `true`.
  void withNumeric([bool value = true]) => _useNumeric = value;

  /// Set whether to use symbols. Default is `true`.
  /// 
  /// Symbols can be modified. The default list of symbols is `['@', '!', '%', '*', '(', ')', ',', '.', '?', '/', ';', '<', '>']`.
  void withSymbols([bool value = true]) => _useSymbols = value;

  /// Set what symbols to use. Default is `['@', '!', '%', '*', '(', ')', ',', '.', '?', '/', ';', '<', '>']`.
  /// 
  /// Whether to use symbols or not can be toggeled true or false by `withSymbols()`.
  void setSymbols(List<String> symbols) => _symbols = symbols;

  /// Generate a random password based on this builder's parameters.
  String build() 
  => RandomGenerator.password(
    length: _length,
    includeLowercase: _useLowercase,
    includeUppercase: _useUppercase,
    includeNumeric: _useNumeric,
    includeSymbols: _useSymbols,
    symbols: _symbols
  );
}