import 'dart:io';

// Membuat kelas untuk menangani kesalahan nilai negatif
class NegativeError implements Exception {
  String message;
  NegativeError([this.message = 'Nilai tidak boleh negatif']);
  @override
  String toString() {
    return 'NegativeError: $message';
  }
}

void main(List<String> args) {
  int a;

  try {
    // Meminta pengguna untuk memasukkan bilangan non-negatif
    stdout.write('Masukkan bilangan non-negatif: ');
    a = int.parse(stdin.readLineSync()!);

    // Mengecek apakah nilai yang dimasukkan kurang dari 0
    if (a < 0) {
      throw NegativeError();
    }

    // Menampilkan nilai yang dimasukkan jika valid
    print('Anda memasukkan nilai $a.');
  } on FormatException catch (e) {
    // Menangani jika input tidak sesuai format bilangan
    print('SALAH: nilai yang dimasukkan bukan bilangan.');
  } on NegativeError catch (e) {
    // Menangani jika nilai yang dimasukkan adalah nilai negatif
    print('SALAH: ${e.message}');
  } catch (e) {
    // Menangani semua eksepsi lainnya
    print('SALAH: terjadi eksepsi bertipe $e.');
  }
}
