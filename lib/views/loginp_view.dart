import 'package:flutter/material.dart';

class LoginpView extends StatefulWidget {
  const LoginpView({super.key});

  @override
  State<LoginpView> createState() => _LoginpViewState();
}

class _LoginpViewState extends State<LoginpView> {
  //String _nombre;
  //String _email;
  //String _password;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/login.jpg",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        //backgroundColor: Colors.red.shade100,
        //backgroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.white,
                image: const DecorationImage(
                  image: AssetImage("assets/sival.jpg"),
                  //fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "Login",
              style: TextStyle(
                //fontFamily: 'cursive',
                fontSize: 30.0,
              ),
            ),
            const SizedBox(
              width: 300.0,
              height: 30,
              child: Divider(
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              enableInteractiveSelection: false,
              autofocus: true,
              decoration: InputDecoration(
                hintText: "User-Name",
                labelText: "Nombre Usuaro",
                suffixIcon: Icon(Icons.verified_user),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              //onSubmitted: (value) {
              //  _nombre = value;
              //},
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: "Email",
                labelText: "Email",
                suffixIcon: Icon(Icons.alternate_email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              //onSubmitted: (value) {
              //  _email = value;
              //},
            ),
            const SizedBox(height: 20),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                suffixIcon: Icon(Icons.lock_clock_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
              ),
              //onSubmitted: (value) {
              //  _password = value;
              //},
            ),
          ],
        ),
      ),
    );
  }
}
