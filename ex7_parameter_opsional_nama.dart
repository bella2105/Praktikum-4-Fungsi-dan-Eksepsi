import 'dart:io';

void printString(String s, {int n = 1, bool newLine = false}) {
  for (int i = 0; i < n; i++) {
    if (newLine) {
      print('${i + 1}. $s');
    } else {
      stdout.write('${i + 1}. $s\t');
    }
  }
}

void main(List<String> args) {
  print('Satu argumen');
  printString('Dart');
  print('\nDua argumen dengan newLine bernilai null:');
  printString('Dart', n: 3);
  print('\nDua argumen dengan n bernilai null:');
  printString('Dart', newLine: true);
  print('\nTiga argumen');
  printString('Dart', n: 3, newLine: true);
}
