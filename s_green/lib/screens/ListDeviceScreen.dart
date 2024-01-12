import 'package:flutter/material.dart';
import 'package:s_green/view/InfoDeviceFrame.dart';

class ListOfDeviceScreen extends StatefulWidget {
  const ListOfDeviceScreen({super.key});

  @override
  State<ListOfDeviceScreen> createState() => _ListOfDeviceScreenState();
}

class _ListOfDeviceScreenState extends State<ListOfDeviceScreen> {
  @override
  Widget build(BuildContext context) {
    List<InfoDeviceFrame> lst = [
      const InfoDeviceFrame(
        title: 'Motor dùng cho hệ thống tưới tự động',
      ),
      const InfoDeviceFrame(
        title: 'Hệ thống sưởi',
      ),
      const InfoDeviceFrame(
        title: 'Cảm biến nhiệt',
      ),
      const InfoDeviceFrame(
        title: 'LCD hiển thị nhiệt độ',
      ),
      const InfoDeviceFrame(
        title: 'Motor dùng cho hệ thống tưới tự động',
      ),
      const InfoDeviceFrame(
        title: 'Motor dùng cho hệ thống tưới tự động',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 236, 101),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 50),
              child: const Text(
                'Danh sách thiết bị',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: lst.length,
        itemBuilder: (BuildContext context, int index) {
          return InfoDeviceFrame(title: lst[index].title);
        },
      ),
    );
  }

  Widget _buildListTile(String title) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        leading: Icon(
          Icons.adb_sharp,
          size: 30,
        ),
        title: Text(
          title,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
