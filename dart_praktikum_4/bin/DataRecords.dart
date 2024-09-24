import 'package:dart_praktikum_4/dart_praktikum_4.dart' as dart_praktikum_4;

//Langkah1 dan 2
// void main() {
//   var record = ('first', a: 2, b: true, 'last');
//   print(record);
// }


// Langkah 3
// List<int> tukar(List<int> record) {
//   var a = record[0];
//   var b = record[1];
//   return [b, a];
// }

// void main() {
//   var record = [1, 2]; // List that will be swapped
//   print('Record sebelum ditukar: $record');

//   var result = tukar(record); // Call the tukar function
//   print('Record setelah ditukar: $result');
// }

//langkah 4
// void main() {
//   List<dynamic> mahasiswa = ['Afifah Rahma', 2241760088];
//   print(mahasiswa);
  
//   print('Nama: ${mahasiswa[0]}');
//   print('NIM: ${mahasiswa[1]}');
// }

// Langkah5
void main() {

  // var mahasiswa2 = ('first', a: 2, b: true, 'last');

  //           print(mahasiswa2.$1); // Prints 'first'
  //           print(mahasiswa2.a); // Prints 2
  //           print(mahasiswa2.b); // Prints true
  //           print(mahasiswa2.$2); // Prints 'last'

  var mahasiswa2 = ('Afifah Rahma', a: 2241760088, b: true, 'last');
  print(mahasiswa2.$1); // 
  print(mahasiswa2.a); // 
  print(mahasiswa2.b); 
  print(mahasiswa2.$2); 
}