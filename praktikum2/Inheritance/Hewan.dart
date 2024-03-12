class Hewan {
  late String nama;
  late int umur;
  late double berat;

  Hewan(this.nama, this.umur, this.berat);

  void jalan() {
    print('$nama sedang berjalan.');
  }

  void makan() {
    print('$nama sedang makan.');
  }
}
