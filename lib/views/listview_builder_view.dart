import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:proyecto/models/response_user_model.dart';
//import 'package:proyecto/models/usuario_model.dart';

class ListviewBuilderView extends StatefulWidget {
  const ListviewBuilderView({super.key});

  @override
  State<ListviewBuilderView> createState() => _ListviewBuilderViewState();
}

class _ListviewBuilderViewState extends State<ListviewBuilderView> {
  ResponseUserModel userModel = ResponseUserModel();

  @override
  void initState() {
    bajarUsuarios(1);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void bajarUsuarios(int page) async {
    final dio = Dio();
    //final response = await dio.get(
    //  'http://www.sivalaplicativos.com/usuariosBajar/$page',
    //);

    final response = await dio.get(
      'https://reqres.in/api/users',
      queryParameters: {
        'page': page,
      },
    );

    //final usuariosAll = (response.data as List).map(
    //  (json) => ResponseUsuarioModel.fromJson(json),
    //);

    //usuarios.addAll(usuariosAll);
    userModel = ResponseUserModel.fromJson(response.data);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listview Builder"),
      ),
      body: userModel.data != null
          ? ListView.builder(
              itemCount: userModel.data?.length,
              itemBuilder: (context, index) {
                final user = userModel.data?[index];
                return ListTile(
                  title: Text("${user?.firstName}" "${user?.lastName}"),
                  subtitle: Text(user!.email),
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(user.avatar),
                  ),
                );
              },
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
