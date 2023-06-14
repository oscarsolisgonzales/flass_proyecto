import 'package:flutter/material.dart';

class TutorialView extends StatelessWidget {
  const TutorialView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards Titurial"),
      ),
      body: Column(
        children: [
          Image.asset('assets/lago.jpg'),
          const SizedBox(height: 15.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    "Campamento en el lago",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Disfute",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    size: 20.0,
                    color: Colors.red,
                  ),
                  Text("41"),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.phone,
                    size: 20.0,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    "Call",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.route,
                    size: 20.0,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    "Route",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    size: 20.0,
                    color: Colors.lightBlue,
                  ),
                  Text(
                    "Share",
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(32.0),
            child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                softWrap: true),
          )
        ],
      ),
    );
  }
}
