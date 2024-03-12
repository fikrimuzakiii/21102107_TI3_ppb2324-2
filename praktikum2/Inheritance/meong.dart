import 'Hewan.dart';

class Meong extends Hewan {
  late String warnaBulu;

  Meong(String nama, int umur, double berat, String warnaBulu)
      : super(nama, umur, berat) {
    this.warnaBulu = warnaBulu;
  }

  // Override metode jalan dari kelas Hewan
  @override
  void jalan() {
    print('$nama, si kucing, berjalan dengan lincah.');
  }
}
