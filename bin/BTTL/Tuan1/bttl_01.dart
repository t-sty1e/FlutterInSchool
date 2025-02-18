import 'dart:io';

void main() {
  stdout.write("Nhập số lượng que kem cần mua: ");
  int n = int.parse(stdin.readLineSync()!);

  stdout.write("Nhập giá tiền cho một que kem: ");
  double pricePerStick = double.parse(stdin.readLineSync()!);

  double totalPrice = n * pricePerStick;

  if (n > 10) {
    totalPrice *= 0.9; // Giảm 10%
  } else if (n >= 5) {
    totalPrice *= 0.95; // Giảm 5%
  }

  print("Tổng tiền phải trả là: \$${totalPrice.toStringAsFixed(2)}");
}