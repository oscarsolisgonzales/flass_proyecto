import 'package:flutter/material.dart';

class AlertsView extends StatelessWidget {
  const AlertsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: Colors.blue,
        title: const Text("Alertas"),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            _showAlertDialog(context);
          },
          child: const Text("Mostrar Alerta"),
        ),
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
          title: const Text("Succes"),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Se ha guardado el registro Ñandú"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {},
              child: const Text("Cancelar"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Ok"),
            )
          ],
        );
      },
    );
  }
}
