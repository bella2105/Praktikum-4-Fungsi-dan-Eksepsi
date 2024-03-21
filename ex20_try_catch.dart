import 'dart:io';

void main(List<String> args) {
  List<String> days = [
    'Minggu',
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jumat',
    'Sabtu'
  ];
  int index;
  stdout.write('Masukkan nomor hari: ');
  index = int.parse(stdin.readLineSync()!);

  try {
    if (index >= 1 && index <= days.length) {
      print('Hari ke-$index adalah ${days[index - 1]}');
    } else {
      throw Exception('SALAH: tidak ada hari ke-$index.');
    }
  } catch (exception, stackTrace) {
    print('Jenis eksepsi: $exception');
    print('Stacktrace: $stackTrace');
  }
}
