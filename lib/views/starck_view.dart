import 'package:flutter/material.dart';

class StacksView extends StatelessWidget {
  const StacksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stacks"),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .30,
            color: Colors.grey,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * .70,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ),
          Positioned(
            top: 90.0,
            //left: MediaQuery.of(context).size.height * .30,
            left: 140.0,
            child: Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: AssetImage("assets/gatito.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
