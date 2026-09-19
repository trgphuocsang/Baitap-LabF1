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
  final sinhVien1 = SinhVien('Trương Phước Sang', '221A010861', 8.7);
  final sinhVien2 = SinhVien('Trần Thị B', '2201234568', 6.4);

  final danhSach = [sinhVien1, sinhVien2];

  for (final sv in danhSach) {
    print(sv);
  }
}
