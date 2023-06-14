import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 20.0,
          left: 15.0,
          right: 15.0,
        ),
        child: Column(
          children: [
            const Text(
              "It is a long sadas asdad ad ada sdasasd ablev It is a long sadas asdad ad ada sdasasd able It is a long sadas asdad ad ada sdasasd able",
            ),
            const SizedBox(height: 10.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset("assets/lago.jpg"),
            ),
            const SizedBox(height: 10.0),
            const Row(
              children: [
                Text("30 Comentarios"),
                SizedBox(width: 10.0),
                Text("10 Compartidos"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
