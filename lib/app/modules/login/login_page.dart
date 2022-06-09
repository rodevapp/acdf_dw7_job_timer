import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0XFF0092B9),
              Color(0XFF016782),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            SizedBox(
              height: screenSize.height * .1,
            ),
            SizedBox(
              height: 49,
              width: screenSize.width * .8,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: Colors.grey.shade300),
                child: Image.asset('assets/images/google.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
