import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              'Aplikasi \nPendataan Warga',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Stack(
            children: [
              Container(
                height: 380,
                child: Card(
                  margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                  color: Colors.brown[200],
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              fillColor: Colors.grey[50],
                              filled: true),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              fillColor: Color.fromARGB(223, 250, 250, 250),
                              filled: true),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              primary: Colors.red),
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: const Text('Login'))),
                    ],
                  ),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/Logo.png',
                  width: 150,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
