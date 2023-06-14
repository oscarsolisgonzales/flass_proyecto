import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/models/response_usuario_model.dart';
//import 'package:proyecto/models/response_user_model.dart';

//import '../models/usuario_model.dart';

class Listview2BuilderView extends StatefulWidget {
  const Listview2BuilderView({Key? key}) : super(key: key);

  @override
  State<Listview2BuilderView> createState() => _Listview2BuilderViewState();
}

class _Listview2BuilderViewState extends State<Listview2BuilderView> {
  //ResponseUserModel userModel = ResponseUserModel();
  List<ResponseUsuarioModel> users = [];
  @override
  void initState() {
    getUsuarioAll(1);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void getUsuarioAll(int page) async {
    final dio = Dio();
    /* final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        "page": page,
      },
    ); */

    final response = await dio.get(
      'http://www.sivalaplicativos.com/usuariosBajar/10',
    );

    //userModel = ResponseUserModel.fromJson(response.data);

    final data = json.decode(response.data);
    users = (data as List)
        .map((json) => ResponseUsuarioModel.fromJson(json))
        .toList();

    //SQLITE

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Builder"),
      ),
      body: users.isNotEmpty
          ? ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return ListTile(
                  title: Text("${user.clienteId} ${user.nombre}"),
                  subtitle: Text(user.email),
                  trailing: Text(user.telefono),
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
