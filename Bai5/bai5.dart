class SinhVien {
  final String hoTen;
  final String mssv;
  final double diemTB;

  SinhVien(this.hoTen, this.mssv, this.diemTB);

  String get xepLoai {
    if (diemTB >= 8.5) return 'Giỏi';
    if (diemTB >= 7.0) return 'Khá';
    if (diemTB >= 5.0) return 'Trung bình';
    return 'Yếu';
  }

  @override
  String toString() {
    return '$mssv – $hoTen – $diemTB ($xepLoai)';
  }
}

void main() {
  final sv1 = SinhVien('Trương Phước Sang', '221A010861', 8.7);
  final sv2 = SinhVien('Trần Thị B', '2201234568', 6.4);

  final ds = [sv1, sv2];

  final Map<String, int> thongKe = {};

  for (final sv in ds) {
    final k = sv.xepLoai;
    thongKe[k] = (thongKe[k] ?? 0) + 1;
  }

  print(thongKe);
}
