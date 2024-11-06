import 'package:flutter/material.dart';
import 'package:flutter_application_1/meus_livros/cadastro_livro/cadastro_livro_page_controller.dart';
import 'package:flutter_application_1/meus_livros/core/database/sqflite/DAO/livro_dao.dart';
import 'package:flutter_application_1/meus_livros/core/repositories/livro_repository_api.dart';
import 'package:flutter_application_1/meus_livros/core/repositories/livro_repository_bd.dart';
import 'package:flutter_application_1/meus_livros/core/services/livros_service.dart';
import 'package:flutter_application_1/meus_livros/lista_livros/lista_livros_page.dart';
import 'package:flutter_application_1/widgets/app_loading_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CadastroLivroPage extends StatefulWidget {
  const CadastroLivroPage({super.key});

  @override
  State<CadastroLivroPage> createState() => _CadastroLivroPageState();
}

class _CadastroLivroPageState extends State<CadastroLivroPage> {
  late CadastroLivroPageController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _controller = CadastroLivroPageController();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
          //  title: const Text('Cadastro de Livros'),
          ),
      body: Observer(
        builder: (ctx) => Visibility(
          replacement: const AppLoadingWidget(),
          visible: !_controller.carregando,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.menu_book, size: 50, color: Colors.blueGrey),
                const Center(
                  child: Text(
                    'Cadastro de Livros',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _controller.tituloController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Titulo',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onChanged: (s) => _controller.tituloController,
                    validator: (value) => _controller.erroTitulo(value),
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _controller.autorController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Autor',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onChanged: (s) => _controller.autorController,
                    validator: (value) => _controller.erroAutor(value),
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _controller.anoPublicacaoController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Ano de publicação',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onChanged: (s) => _controller.anoPublicacaoController,
                    validator: (value) => _controller.erroAnoPublicacao(value),
                  ),
                ),
                const SizedBox(height: 14),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _controller.generoController,
                    decoration: InputDecoration(
                      labelText: 'Gênero',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    onChanged: (s) => _controller.generoController,
                    validator: (value) => _controller.erroGenero(value),
                  ),
                ),
                const SizedBox(height: 14),
                Center(
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState != null &&
                          _formKey.currentState!.validate()) {
                        final livro = _controller.criarLivro();
                       // await _controller.salvarLivro( );
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text("Livro salvo com sucesso!")),
                        );

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ListaLivroPage()),
                        );
                      }
                    },
                    child: const Text('Salvar'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
