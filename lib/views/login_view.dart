import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pendataankelas4b/views/dashboard_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: Text(
              'Aplikasi \nPendataan Warga',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Stack(
            children: [
              Container(
                height: 380,
                child: Card(
                  margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  color: Colors.brown[200],
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              fillColor: Colors.grey[50],
                              filled: true),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              fillColor: Color.fromARGB(223, 250, 250, 250),
                              filled: true),
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: ((c) => DashboardView())));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              primary: Colors.red),
                          child: const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Text('Login'))),
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
