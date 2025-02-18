import 'dart:io';

void main() {
  stdout.write("Nhập một số nguyên dương > 10: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n <= 10) {
    print("Số nhập vào phải lớn hơn 10.");
    return;
  }

  // a. Số chữ số trong số nguyên
  int numDigits = n.toString().length;
  print("Số chữ số trong số nguyên là: $numDigits");

  // b. Tính tổng các chữ số
  int sumOfDigits = n.toString().split('').map(int.parse).reduce((a, b) => a + b);
  print("Tổng các chữ số trong số nguyên là: $sumOfDigits");

  // c. Kiểm tra có chứa chữ số lẻ hay không
  bool hasOddDigit = n.toString().split('').any((digit) => int.parse(digit) % 2 != 0);
  if (hasOddDigit) {
    print("Số nhập vào có chứa chữ số lẻ.");
  } else {
    print("Số nhập vào không chứa chữ số lẻ.");
  }
}