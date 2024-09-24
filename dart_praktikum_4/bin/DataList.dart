import 'package:dart_praktikum_4/dart_praktikum_4.dart' as dart_praktikum_4;

// void main(List<String> arguments) {
//   print('Hello world: ${dart_praktikum_4.calculate()}!');
//   var list = [1, 2, 3];
//   assert(list.length == 3);
//   assert(list[1] == 2);
//   print(list.length);
//   print(list[1]);

//   list[1] = 1;
//   assert(list[1] == 1);
//   print(list[1]);
// }

void main(List<String> arguments) {
  final List<String?> list = List.filled(5, null); 

  // Mengisi elemen ke-1 dan ke-2 dengan nama dan NIM
  list[1] = "Afifah Rahma";
  list[2] = "2241760088";

  // Tetap mencetak panjang list sesuai kode asli
  print(list[1]); // Mencetak nama pada elemen ke-1
  print(list[2]); // Mencetak NIM pada elemen ke-2

  list[1] = "Afifah Rahma";
  assert(list[1] == "Afifah Rahma"); 

  print(list[1]); 
  print(list); 
}

