import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
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
                'Cài đặt',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              //
              print('Phiên bản ứng dụng');
              openDialog(context, "Phiên bản ứng dụng", "0.1");
            },
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: const Row(
                children: [
                  Icon(Icons.help_outline_sharp, size: 30),
                  SizedBox(width: 8.0),
                  Text(
                    'Phiên bản ứng dụng',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              print('Giới thiệu');
              openDialog(
                  context, "Về chúng tôi", """Nhóm chúng tôi gồm 4 thành viên:
    Tiền
    Lập
    Dương
    Duyên
    """);
            },
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: const Row(
                children: [
                  Icon(Icons.copyright, size: 32),
                  SizedBox(width: 8.0),
                  Text(
                    'Giới thiệu',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20.0),
          Container(
            width: 220,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, '/welcome', (route) => false);
              },
              child: const ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Đăng xuất"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> openDialog(BuildContext context, String tt, String gt) async {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return AlertDialog(
            title: Text(tt),
            content: Text(gt),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    },
  );
}
