import 'dart:io';

void main() {
  List<int> numbers = readNumbers();
  printNumbers(numbers);
  printNumbersPrime(numbers);
  print('Tong cac so nguyen vua nhap: ${sum(numbers)}');
  stdout.write("Nhập giá trị cần kiểm tra: ");
  int x = int.parse(stdin.readLineSync()!);
  check(numbers, x);
  print("Danh sách sau khi kiểm tra: $numbers");
}

List<int> readNumbers() {
  stdout.write("Nhập danh sách các số nguyên, cách nhau bởi dấu cách: ");
  return stdin.readLineSync()!.split(' ').map(int.parse).toList();
}

void printNumbers(List<int> numbers) {
  print("Danh sách các số nguyên vừa nhập: $numbers");
}

void printNumbersPrime(List<int> numbers) {
  List<int> primeNumbers = numbers.where((number) => prime(number)).toList();
  print("Danh sách các số nguyên tố: $primeNumbers");
}
bool check(List<int> numbers, int x ) {
  int index = 1;
  for (int number in numbers) {
    if (number == x) {
      print("Giá trị $x được tìm thấy ở vị trí $index trong danh sách");
      return true;
    }
    index++;
  }
  numbers.insert(0, x);
  print("Giá trị $x không có trong danh sách. Đã thêm vào đầu danh sách.");
  return false;
  
}

int sum(List<int> numbers) {
  int sum = 0;
  for (int number in numbers) {
    sum += number;
  }
  return sum;
}

bool prime(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}