// void main() {
// print('Hello, World!');

// var name = 'Puspita';
// var year = 2023;
// var bulan = ['Januari', 'Februari', 'Maret', 'April'];

// print('$name, $year, $bulan');

// String greetings = 'Hello Dart!';
// int years = 2023;

// print('$greetings, $years');

// int angka = 10;
// if (angka > 0) {
//   print('bilangan positif');
// } else if (angka < 0) {
//   print('bilangan negatif');
// } else {
//   print('bilangan nol');
// }

// String variable = 'value1';

// switch (variable) {
//   case 'value1':
//     print('This is value1');
//     break;
//   case 'value2':
//     print('This is value2');
//     break;
//   default:
//     print('This is a default value');
// }

// for (int i = 1; i <= 100; i++) {
//   print(i);
// }

// var i = 1;
// while (i <= 100) {
//   print(i);
//   i++;
// }

// var i = 1;
// do {
//   print(i);
//   i++;
// } while (i <= 100);

// List<int> numberList = [1, 2, 3, 4, 5];

// List dynamicList = [1, 'Informatika', true]; // List<dynamic>
// }

// enum Pelangi { merah, jingga, kuning, hijau, biru, nila, ungu }

// enum Status { Todo, In_Progress, In_Review, Done }

// void main() {
//   print(Pelangi.values);
//   print(Pelangi.kuning);
//   print(Pelangi.biru.index);
// }

// void main() {
//   var sum = (int angka1, int angka2) => angka1 + angka2;
//   Function printLambda = () => print('This is lambda function');
//   printLambda();
//   print(sum(9, 1));
// }

// void main() {
//   void contohHigherOrderFunction(String message, Function myFunction) {
//     print(message);
//     print(myFunction(10, 10));
//   }

// // Opsi 1
//   Function sum = (int num1, int num2) => num1 + num2;
//   contohHigherOrderFunction('Hello', sum);
// // Opsi 2
//   contohHigherOrderFunction('Hello', (num1, num2) => num1 + num2);
// }

// void main() {
//   var contohClosure = penjumlahan(9);
//   contohClosure();
//   contohClosure();
// }

// Function penjumlahan(base) {
//   var a = 1;
//   return () => print("Nilainya adalah ${base + a++}");
// }
// Outputnya
// Nilainya adalah 3
// Nilainya adalah 4

// void main() {
//   List<int> bilangan = [1, 2, 3, 4, 5];
//   List<String> kata = ['Informatika', 'Flutter', 'Pemrograman'];
//   List dynamicList = [1, 2, 3, 'empat']; // List<dynamic>

//   print({bilangan, kata, dynamicList});
// }

// void main() {
//   Map<String, dynamic> jurusan = {'prodi': 'Informatika', 'angkatan': 2020};
//   print(jurusan);
// }

// void main() {
//   getProduct().then((value) {
//     print('You product: $value');
//   }).catchError((error) {
//     print('Sorry. $error');
//   });
//   print('Getting your product...');
// }

// Future<String> getProduct() {
//   return Future.delayed(Duration(seconds: 3), () {
//     var isProductAvailable = false;
//     if (isProductAvailable) {
//       return 'Coffee Boba';
//     } else {
//       throw 'Our stock is not enough.';
//     }
//   });
// }

void main() async {
  print('Getting your product...');
  try {
    var order = await getProduct();
    print('You order: $order');
  } catch (error) {
    print('Sorry. $error');
  } finally {
    print('Thank you');
  }
}

Future<String> getProduct() {
  return Future.delayed(Duration(seconds: 3), () {
    var isProductAvailable = false;
    if (isProductAvailable) {
      return 'Matcha Latte';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}
