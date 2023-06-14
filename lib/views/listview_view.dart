import 'package:flutter/material.dart';

class ListviewView extends StatelessWidget {
  const ListviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: Container(
        //color: Colors.red,
        width: double.infinity,
        height: 190,
        margin: const EdgeInsets.only(top: 30.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            itemCard(
              urlImagePath:
                  "https://i.pinimg.com/236x/65/7c/f5/657cf5d5a23e39ee148bba8d8bfdcfe5.jpg",
              titulo: "Universo",
            ),
            itemCard(
              urlImagePath:
                  "https://i.pinimg.com/236x/07/cc/06/07cc06da77a49e8f7aad4e0467ba4b2b.jpg",
              titulo: "Home",
            ),
            itemCard(
              urlImagePath:
                  "https://i.pinimg.com/236x/65/7c/f5/657cf5d5a23e39ee148bba8d8bfdcfe5.jpg",
              titulo: "Universo",
            ),
            itemCard(
              urlImagePath:
                  "https://i.pinimg.com/236x/07/cc/06/07cc06da77a49e8f7aad4e0467ba4b2b.jpg",
              titulo: "Universo",
            ),
            // Column(
            //   children: [
            //     Container(
            //       width: 140.0,
            //       height: 160.0,
            //       margin: const EdgeInsets.only(left: 15.0),
            //       decoration: BoxDecoration(
            //         color: Colors.yellow,
            //         borderRadius: BorderRadius.circular(25.0),
            //         image: const DecorationImage(
            //           image: NetworkImage(
            //               "https://i.pinimg.com/236x/65/7c/f5/657cf5d5a23e39ee148bba8d8bfdcfe5.jpg"),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     ),
            //     const SizedBox(height: 10.0),
            //     const Text("Texto Imagen"),
            //   ],
            // ),
            // Container(
            //   width: 140.0,
            //   margin: const EdgeInsets.only(left: 15.0),
            //   decoration: BoxDecoration(
            //     color: Colors.yellow,
            //     borderRadius: BorderRadius.circular(25.0),
            //   ),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(25.0),
            //     child: Image.network(
            //       "https://i.pinimg.com/236x/07/cc/06/07cc06da77a49e8f7aad4e0467ba4b2b.jpg",
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            // Container(
            //   width: 140.0,
            //   margin: const EdgeInsets.only(left: 15.0),
            //   decoration: BoxDecoration(
            //     color: Colors.yellow,
            //     borderRadius: BorderRadius.circular(25.0),
            //     image: const DecorationImage(
            //       image: AssetImage("gatito.jpg"),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            // Container(
            //   width: 140.0,
            //   margin: const EdgeInsets.only(left: 15.0),
            //   decoration: BoxDecoration(
            //     color: Colors.yellow,
            //     borderRadius: BorderRadius.circular(25.0),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget itemCard({
    required String urlImagePath,
    required String titulo,
  }) {
    return Column(
      children: [
        Container(
          width: 140.0,
          height: 160.0,
          margin: const EdgeInsets.only(left: 15.0),
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(25.0),
            image: DecorationImage(
              image: NetworkImage(urlImagePath),
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
