import 'package:flutter/material.dart';

class FlutteruiView extends StatelessWidget {
  const FlutteruiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards Titurial"),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset('images/20300239511.JPG'),
            Column(
              children: [
                Text(
                  "Job Hunting",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  "Made Easy",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {},
              elevation: 10.0,
              minWidth: 170.0,
              height: 50.0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: const Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
