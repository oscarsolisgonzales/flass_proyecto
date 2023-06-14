import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Su nombre")),
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const FlutterLogo(
                    size: 100,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.people),
                      label: Text("Nombre"),
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      icon: Icon(Icons.people),
                      label: Text("Apellido"),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.45,
                    child: ElevatedButton(
                        onPressed: (() => print("Hola soy el botón")),
                        child: const Text("Aceptar")),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
