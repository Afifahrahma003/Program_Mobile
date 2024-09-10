void main() {
  for (int i = 2; i <= 201; i++) {
    if (bilanganP(i)) {
      print('Bilangan prima: $i');
      print('Nama: Afifah Rahma');
      print('NIM: 2241760088');
      print('----------------------');
    }
  }
}

bool bilanganP(int number) {
  if (number <= 1) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) return false;
  }
  return true;
}