void main() {
  final diem = <double>[7.5, 4.0, 8.5, 9.0, 5.5];

  final tong = diem.reduce((a, b) => a + b);
  final diemTB = tong / diem.length;
  final dat = diem.where((d) => d >= 5).toList();

  print('Điểm TB: ${diemTB.toStringAsFixed(2)}; đạt: $dat');
}
