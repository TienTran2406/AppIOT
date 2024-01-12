class Device{
  int id;
  String name;
  String loaiThietBi;
  bool trangThai;
  Device(this.id, this.name ,this.loaiThietBi, this.trangThai);

  static List<Device> lstDevice = [
    Device(1, "Hệ thống tưới cây","tuoi_nuoc", false),
    Device(2, "Hệ thống đèn sưởi 1","den_suoi", false),
    Device(3, "Hệ thống đèn sưởi 2","den_suoi", false),
    Device(4, "Hệ thống đèn","den", false),
  ];
}