import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Merial App",
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "CAFE",
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 54,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Nuestro cafe es el mejor del Mundo",
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Image.asset('images/20300239511.JPG'),
              Column(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Iniciar Sesión'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 20,
                      ),
                      minimumSize: Size(double.infinity, 54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Registrarse',
                      style: TextStyle(color: Colors.brown),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade200,
                      side: BorderSide(color: Colors.brown),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 100,
                        vertical: 20,
                      ),
                      minimumSize: const Size(double.infinity, 54),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
