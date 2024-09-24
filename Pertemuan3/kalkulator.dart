import 'dart:io';

void main() {
  int jmlsmt, jmlmk;
  List<List<String>> matkul = [];
  List<List<int>> sks = [];
  List<List<String>> nilaihuruf = [];
  List<int> skssmt = [];
  List<double> nr = [];
  double totalnr = 0;
  int totalsks = 0;

  print("==============================================");
  print("\tProgram Menghitung IPK Mahasiswa");
  print("==============================================");

  stdout.write("Masukkan jumlah semester: ");
  jmlsmt = int.parse(stdin.readLineSync()!);

  if (jmlsmt < 2 || jmlsmt > 14) {
    print("Jumlah semester salah!");
    return;
  } else {
    for (int i = 0; i < jmlsmt; i++) {
      int jumlahnilai = 0;
      int jumlahsks = 0;
      List<String> mkPerSemester = [];
      List<int> sksPerSemester = [];
      List<String> nilaiHurufPerSemester = [];

      stdout.write("Masukkan jumlah mata kuliah semester ${i + 1}: ");
      jmlmk = int.parse(stdin.readLineSync()!);

      for (int j = 0; j < jmlmk; j++) {
        stdout.write("Masukkan mata kuliah ke-${j + 1}\n");
        stdout.write("Masukkan nama matkul: ");
        String mk = stdin.readLineSync()!;
        mkPerSemester.add(mk);

        stdout.write("Masukkan jumlah sks matkul: ");
        int jumlahSks = int.parse(stdin.readLineSync()!);
        sksPerSemester.add(jumlahSks);

        stdout.write("Masukkan nilai matkul (A, B, C, D, E): ");
        String nilaiHuruf = stdin.readLineSync()!;
        nilaiHurufPerSemester.add(nilaiHuruf);

      print("--------------------------------------------");

        int nilai = 0;
        switch (nilaiHuruf) {
          case 'A':
            nilai = 4 * jumlahSks;
            break;
          case 'B':
            nilai = 3 * jumlahSks;
            break;
          case 'C':
            nilai = 2 * jumlahSks;
            break;
          case 'D':
            nilai = 1 * jumlahSks;
            break;
          case 'E':
            nilai = 0 * jumlahSks;
            break;
          default:
            print("Input salah!");
            return;
        }

        jumlahnilai += nilai;
        jumlahsks += jumlahSks;
      }

      skssmt.add(jumlahsks);
      nr.add(jumlahnilai / jumlahsks);

      matkul.add(mkPerSemester);
      sks.add(sksPerSemester);
      nilaihuruf.add(nilaiHurufPerSemester);

    }
  }

  print("==============================================");
  print("\t\tTranskrip Nilai");
  print("==============================================");

  for (int i = 0; i < jmlsmt; i++) {
    print("\nHasil Semester ${i + 1} :\n");
    print("${"Mata Kuliah".padRight(15)}${"SKS".padRight(10)}${"Nilai"}");

    for (int j = 0; j < matkul[i].length; j++) {
      print("${matkul[i][j].padRight(15)}${sks[i][j].toString().padRight(10)}${nilaihuruf[i][j]}");
    }

    print("\nSKS     : ${skssmt[i]}");
    print("NR      : ${nr[i].toStringAsFixed(2)}");

    totalsks += skssmt[i];
    totalnr += nr[i];
    print("--------------------------------------------");
  }

  double ipk = totalnr / jmlsmt;
  print("\nTotal SKS       : $totalsks");
  print("IPK             : ${ipk.toStringAsFixed(2)}");
  print("==============================================");
}
