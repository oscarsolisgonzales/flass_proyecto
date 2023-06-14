import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  const AvatarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        //backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: false,
        title: const Text("Good Morning"),
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://i.pinimg.com/564x/e7/85/de/e785de451ef377349afdf04952ff0158.jpg"),
          ),
          SizedBox(width: 15.0),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 50.0,
          backgroundImage: AssetImage("assets/gatito.jpg"),
        ),
      ),
    );
  }
}
