//abstract(4)
abstract class Society {
  void makan();
}

//class Manusa turunan dari Society
class Manusia extends Society {
  //deklarasi atribut/properti
  String nama = '';

  //constructor
  Manusia(nm) {
    this.nama = nm;
  }

  //method
  void makan() {
    print('$nama makan nasi');
  }
}

//Inheritance Manusia
class ManusiaMilenial extends Manusia {
  //atribut/properti
  String email = '';

  //encapsulation(3)
  //untuk membuat access modifier set private cukup dengan membuat underscore pada awal nama atribute/variable
  String _password = '1234'; //hanya bisa diakses pada file yang sama
  //constructor
  ManusiaMilenial(String email) : super(email);

  //method
  void info() {
    print('Nama : $nama, Email:$email');
  }
}

//Polimorphysm(5) : kemampuan merubah bentuk dibanyak tempat
class Dosen extends ManusiaMilenial {
  Dosen(String nama) : super(nama);

  //method info() pada class ManusiaMillenial telah di Overide pada class Dosen
  @override
  void info() {
    print('Nama : $nama,Telah memiliki Email:$email');
  }
}
