class Pangram {
  bool isPangram(String string) => string.contains(RegExp(r'[A-Z]'));
}
