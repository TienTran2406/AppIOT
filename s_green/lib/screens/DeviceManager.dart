import 'package:flutter/material.dart';
import 'package:s_green/models/Device.dart';
import 'package:s_green/view/DeviceFrame.dart';

class DeviceManager extends StatefulWidget {
  @override
  _DeviceManagerState createState() => _DeviceManagerState();
}

class _DeviceManagerState extends State<DeviceManager> {
  bool checked = false;
  List<Device> _lst = List.filled(0, Device(0, "", "", false), growable: true);
  @override
  Widget build(BuildContext context) {
    _lst = Device.lstDevice;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 236, 101),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 50),
              child: const Text(
                "Quản lý thiết bị",
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemCount: _lst.length,
        itemBuilder:(BuildContext context, int index) {
          return DeviceFrame(nameDevice: _lst[index].name, loaiThietBi: _lst[index].loaiThietBi, trangThai: _lst[index].trangThai);
        },
        ),
    );
  }
}
