import 'package:proyecto/views/alerts_view.dart';
import 'package:proyecto/views/avatar_view.dart';
import 'package:proyecto/views/card_view.dart';
import 'package:proyecto/views/listview2_builder_view.dart';
import 'package:proyecto/views/listview_builder_view.dart';
import 'package:proyecto/views/listview_view.dart';
import 'package:proyecto/views/loginp_view.dart';
import 'package:proyecto/views/starck_view.dart';
import 'package:proyecto/views/tarea01_view.dart';
import 'package:proyecto/views/tutorial_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/login.jpg",
            ),
            fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(
          child: Column(
            children: [
              const DrawerHeader(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          "https://i.pinimg.com/564x/e7/85/de/e785de451ef377349afdf04952ff0158.jpg"),
                    ),
                    SizedBox(height: 0.0),
                    Text(
                      "Sistema en Laravel ",
                      style: TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.red.shade100,
                  child: Column(
                    children: [
                      menuOpt(context,
                          view: const AlertsView(),
                          menuText: "Alertas",
                          leadingIcon: Icons.notifications,
                          trailingIcon: Icons.arrow_forward_ios),
                      menuOpt(context,
                          view: const AvatarView(),
                          menuText: "Avatar",
                          leadingIcon: Icons.person,
                          trailingIcon: Icons.arrow_forward_ios),
                      menuOpt(context,
                          view: const CardView(),
                          menuText: "Card",
                          leadingIcon: Icons.card_giftcard,
                          trailingIcon: Icons.arrow_forward_ios),
                      menuOpt(context,
                          view: const TutorialView(),
                          menuText: "Card Tutorial",
                          leadingIcon: Icons.card_membership,
                          trailingIcon: Icons.arrow_forward_ios),
                      menuOpt(context,
                          view: const ListviewBuilderView(),
                          menuText: "Listview Builder",
                          leadingIcon: Icons.card_membership,
                          trailingIcon: Icons.arrow_forward_ios),
                      menuOpt(context,
                          view: const Listview2BuilderView(),
                          menuText: "Listview Builder 2",
                          leadingIcon: Icons.card_membership,
                          trailingIcon: Icons.arrow_forward_ios),
                      //menuOpt(context,
                      //    view: const FlutteruiView(),
                      //    menuText: "Flutter UI",
                      //    leadingIcon: Icons.ac_unit,
                      //    trailingIcon: Icons.arrow_forward_ios),
                      //menuOpt(context,
                      //    view: CryptoView(),
                      //    menuText: "Crypto",
                      //    leadingIcon: Icons.copy_sharp,
                      //    trailingIcon: Icons.arrow_forward_ios),
                      menuOpt(context,
                          view: const ListviewView(),
                          menuText: "Listview",
                          leadingIcon: Icons.label,
                          trailingIcon: Icons.arrow_forward_ios),
                      menuOpt(context,
                          view: const StacksView(),
                          menuText: "Stacks",
                          leadingIcon: Icons.more_horiz,
                          trailingIcon: Icons.arrow_forward_ios),
                      menuOpt(context,
                          view: const Tarea01View(),
                          menuText: "Tarea01",
                          leadingIcon: Icons.abc,
                          trailingIcon: Icons.arrow_forward_ios),
                      menuOpt(context,
                          view: const LoginpView(),
                          menuText: "Login01",
                          leadingIcon: Icons.login,
                          trailingIcon: Icons.arrow_forward_ios),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: const Text("Home"),
        ),
      ),
    );
  }

  Widget menuOpt(
    BuildContext context, {
    required Widget view,
    required String menuText,
    required IconData leadingIcon,
    required IconData trailingIcon,
  }) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => view,
          ),
        );
      },
      title: Text(menuText),
      leading: Icon(leadingIcon),
      trailing: Icon(
        trailingIcon,
        size: 16.0,
        color: Colors.blue,
      ),
    );
  }
}
