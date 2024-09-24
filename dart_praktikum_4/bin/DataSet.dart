import 'package:dart_praktikum_4/dart_praktikum_4.dart' as dart_praktikum_4;

// void main(List<String> arguments) {
//   var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
// print(halogens);
// }


void main() {
  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  // Menambahkan elemen menggunakan .add()
  names1.add("Afifah Rahma");
  names1.add("2241760088");

  // Menambahkan elemen menggunakan .addAll()
  names2.addAll(["Afifah Rahma", "2241760088"]);

  print("names1:");
  print(names1); 

  print("names2:");
  print(names2); 
}