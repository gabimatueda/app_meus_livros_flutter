import 'package:flutter/material.dart';
import 'package:flutter_application_1/meus_livros/api/api.dart';
import 'package:flutter_application_1/meus_livros/core/database/sqflite/DAO/livro_dao.dart';
import 'package:flutter_application_1/meus_livros/core/repositories/livro_repository_api.dart';
import 'package:flutter_application_1/meus_livros/core/repositories/livro_repository_bd.dart';
import 'package:flutter_application_1/meus_livros/core/services/livros_service.dart';
import 'package:flutter_application_1/meus_livros/lista_livros/lista_livros_page_controller.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_application_1/widgets/app_loading_widget.dart';
import 'package:sqflite/sqflite.dart';

class ListaLivroPage extends StatefulWidget {
  const ListaLivroPage({Key? key}) : super(key: key);

  @override
  State<ListaLivroPage> createState() => _ListaLivroPageState();
}

class _ListaLivroPageState extends State<ListaLivroPage> {
  late ListaLivrosPageController _controller;
  
  @override 
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = ListaLivrosPageController();
    _controller.carregarLivros();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Livros'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: _controller.carregarLivros,
          ),
        ],
      ),
      body: Observer(
        builder: (context) {
          if (_controller.carregando) {
            return const AppLoadingWidget();
          }

          if (_controller.livros.isEmpty) {
            return const Center(child: Text('Nenhum livro encontrado.'));
          }

          return ListView.builder(
            itemCount: _controller.livros.length,
            itemBuilder: (context, index) {
              final livro = _controller.livros[index];
              return ListTile(
                leading: const Icon(Icons.book, color: Colors.blueGrey),
                title: Text(livro.titulo),
                subtitle: Text('${livro.autor} - ${livro.anoPublicacao}'),
                trailing: Text(livro.genero),
              );
            },
          );
        },
      ),
    );
  }
}
