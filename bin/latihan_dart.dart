import 'package:latihan_dart/latihan_dart.dart' as latihan_dart;
import 'package:latihan_dart/class.dart';

void main(List<String> arguments) {
  //instansisai object(1)
  //inheritance(2) : ManusiaMilenial turunan daru class Manusia
  print('---------');
  var programmer = ManusiaMilenial('Sulis');
  programmer.email = 'programmer@gmail.com';
  programmer.makan(); //mengambil method dari class Manusia
  programmer.info(); //mengambil method dari class ManusiaMileenial
  print(programmer.email);
  print(programmer.nama);
  //akses atribut private tidak bisa diakess diluar file
  //print(programmer._password);

  print('---------');
  var dosen = ManusiaMilenial('Sulis');
  dosen.email = 'dosen@gmail.com';
  dosen.makan();
  dosen.info();

  //Polymorphysm(5)
  print('---------');
  var dosen2 = Dosen('Sulis');
  dosen2.email = 'dosen2@gmail.com';
  dosen2.makan();
  dosen2.info();
}
