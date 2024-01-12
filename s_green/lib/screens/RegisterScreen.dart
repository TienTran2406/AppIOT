import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? _email = TextEditingController();
    TextEditingController? _password = TextEditingController();
    TextEditingController? _confirnPassword = TextEditingController();
    double _h = 600;
    if (MediaQuery.of(context).size.height >= 600) {
      _h = MediaQuery.of(context).size.height / 1.175;
    }
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/welcome', (route) => false);
            },
            icon: const Icon(Icons.arrow_back)),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/login', (route) => true);
                },
                child: const Text(
                  "Đăng nhập",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ))
          ],
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: const Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Đăng ký",
                        style: TextStyle(fontSize: 25),
                      ),
                    ],
                  ),
                ]),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: _h,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 95, 236, 101),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      margin: const EdgeInsets.only(top: 100),
                      child: TextField(
                        controller: _email,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 244, 234, 234),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          hintText: "Email",
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextField(
                        controller: _password,
                        obscureText: true,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 244, 234, 234),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          hintText: "Password",
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 1.3,
                      margin: const EdgeInsets.only(top: 10),
                      child: TextField(
                        controller: _confirnPassword,
                        obscureText: true,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color.fromARGB(255, 244, 234, 234),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ),
                          hintText: "Confirn Password",
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 80),
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: const Text(
                          "Đăng ký",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
