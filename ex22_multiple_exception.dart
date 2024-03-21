import 'dart:io';

void main(List<String> args) {
  int a, b, c;

  try {
    // Meminta pengguna untuk memasukkan nilai a
    stdout.write('Masukkan nilai a: ');
    a = int.parse(stdin.readLineSync()!);

    // Meminta pengguna untuk memasukkan nilai b
    stdout.write('Masukkan nilai b: ');
    b = int.parse(stdin.readLineSync()!);

    // Melakukan operasi pembagian bulat
    c = a ~/ b;
    print('$a ~/ $b = $c');
  } on FormatException catch (exception, stackTrace) {
    // Menangani jika input tidak sesuai format bilangan
    print('SALAH: nilai yang dimasukkan bukan bilangan.');
  } on IntegerDivisionByZeroException catch (exception, stackTrace) {
    // Menangani jika terjadi pembagian dengan nilai nol
    print('SALAH: terjadi pembagian dengan nilai nol.');
  } catch (exception, stackTrace) {
    // Menangani semua eksepsi lainnya
    print('SALAH: terjadi eksepsi bertipe $exception.');
  } finally {
    // Menampilkan pesan setelah blok try-catch selesai dieksekusi
    print('Selesai...');
  }
}
