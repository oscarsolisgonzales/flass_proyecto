import 'package:flutter/material.dart';

class Tarea01View extends StatelessWidget {
  const Tarea01View({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tarea 01"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 30.0,
                  top: 20.0,
                  right: 30.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.donut_large,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                    Text("Busqueda Avanzada"),
                    Icon(
                      Icons.star,
                      size: 30.0,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 190,
                margin: const EdgeInsets.only(top: 30.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    itemlista(url11: "assets/gatito.jpg", titulo: "Universo"),
                    itemlista(
                        url11: "assets/principal.jpg", titulo: "Universo2"),
                    itemlista(url11: "assets/lago.jpg", titulo: "Universo"),
                    itemlista(url11: "assets/playa.jpg", titulo: "Universo2"),
                    itemlista(url11: "assets/gatito.jpg", titulo: "Universo"),
                    itemlista(
                        url11: "assets/principal.jpg", titulo: "Universo2"),
                  ],
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                    width: double.infinity,
                    height: 290,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blueAccent,
                      image: const DecorationImage(
                        image: AssetImage("assets/mar.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 15.0,
                    left: 20.0,
                    child: Icon(
                      Icons.more_horiz,
                      size: 35.0,
                      color: Colors.blueAccent,
                    ),
                  ),
                  const Positioned(
                    top: 15.0,
                    right: 90.0,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/gatito.jpg"),
                      radius: 20.0,
                    ),
                  ),
                  Positioned(
                    top: 25.0,
                    right: 25.0,
                    child: Container(
                      width: 60.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.black54,
                      ),
                      child: const Text(
                        "     9 Km.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 200.0,
                    left: 25.0,
                    child: Text(
                      "Playa Tranquila",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 230.0,
                    left: 25.0,
                    child: Text(
                      "Km. 200 Panamericana Sur",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 180.0,
                    right: 25.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.pink,
                      radius: 18,
                      child: Icon(Icons.pets),
                    ),
                  ),
                  const Positioned(
                    top: 225.0,
                    right: 25.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      radius: 18,
                      child: Icon(Icons.umbrella),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget itemlista({
    required String url11,
    required String titulo,
  }) {
    return Column(
      children: [
        Container(
          width: 120.0,
          height: 120.0,
          margin: const EdgeInsets.only(left: 15.0),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              image: AssetImage(url11),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Text(titulo),
      ],
    );
  }
}
