import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController? _email = TextEditingController();
    TextEditingController? _password = TextEditingController();
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
                      context, '/register', (route) => true);
                },
                child: const Text(
                  "Đăng ký",
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
                        "Đăng nhập",
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
                      margin: const EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width / 1.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "Quên mật khẩu?",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ))
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: MediaQuery.of(context).size.width / 1.3,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                        ),
                        child: const Text(
                          "Đăng nhập",
                          style: TextStyle(fontSize: 18, color: Colors.white),
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
                            backgroundColor: Colors.white,
                            side: const BorderSide(
                              width: 2,
                              color: Colors.black,
                            )),
                        child: ListTile(
                          leading: Image.network(
                              'https://cdn.iconscout.com/icon/free/png-512/free-google-160-189824.png?f=webp&w=256',
                              height: 25,
                              width: 25,
                              fit: BoxFit.cover),
                          title: const Text(
                            "Sign in with Google",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
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
