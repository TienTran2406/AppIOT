import 'package:flutter/material.dart';
import 'package:s_green/view/Bottom_Nav.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String _e = "0306211297@caothang.edu.vn";
    double _hTop = 180.0;
    double _hBot = 450.0;
    if (MediaQuery.of(context).size.height * 0.25 >= 180) {
      _hTop = MediaQuery.of(context).size.height * 0.27;
    }
    if (MediaQuery.of(context).size.height * 0.75 >= 450) {
      _hBot = MediaQuery.of(context).size.height * 0.6;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 236, 101),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.all(0),
                child: const Text(
                  "Thông tin cá nhân",
                  style: TextStyle(fontSize: 25),
                ))
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 95, 236, 101),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(0),
                width: MediaQuery.of(context).size.width,
                height: _hTop,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/edit_profile');
                        },
                        child: const CircleAvatar(
                          backgroundImage:
                              AssetImage("root/assets/img/avt.jpg"),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/edit_profile');
                              },
                              icon: const Icon(
                                Icons.border_color_sharp,
                                size: 40,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: _hBot,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 50),
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 65,
                      child: Card(
                        color: const Color.fromARGB(255, 217, 217, 217),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Text(
                            "Biệt danh:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          title: Text(
                            "Neyi",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 65,
                      child: Card(
                        color: const Color.fromARGB(255, 217, 217, 217),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Text(
                            "Ngày sinh:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          title: Text(
                            "24/06/2003",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 65,
                      child: Card(
                        color: const Color.fromARGB(255, 217, 217, 217),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Text(
                            "Giới tính:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          title: Text(
                            "Nam",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 65,
                      child: Card(
                        color: const Color.fromARGB(255, 217, 217, 217),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Text(
                            "Sđt:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          title: Text(
                            "0967456111",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 65,
                      child: Card(
                        color: const Color.fromARGB(255, 217, 217, 217),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: ListTile(
                          leading: const Text(
                            "Email:",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          title: Text(
                            _emailRutGon(_e),
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.end,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNav(index: 1),
    );
  }
}

String _emailRutGon(String e) {
  String str = e;
  if (str.length > 13) {
    return str.substring(0, 13) + "...";
  }
  return str;
}
