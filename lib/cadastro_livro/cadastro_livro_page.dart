import 'package:flutter/material.dart';
import 'package:flutter_application_1/cadastro_livro/cadastro_livro_page_controller.dart';
import 'package:flutter_application_1/widgets/app_loading_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:gc_comp/gc_text_form_field.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                GcTextFormField(
                  'Titulo',
                  controller: _controller.tituloController,
                  onChanged: (s) => _controller.tituloController,
                  onLeave: (currentValue) => _controller.onLeaveTitulo(),
                  validator: (value) => _controller.erroTitulo(value),
                ),
                const SizedBox(height: 8),
                GcTextFormField(
                  'Autor',
                  controller: _controller.autorController,
                  onChanged: (s) => _controller.autorController,
                  onLeave: (currentValue) => _controller.onLeaveAutor(),
                  validator: (value) => _controller.erroAutor(value),
                ),
                const SizedBox(height: 8),
                GcTextFormField(
                  'Ano de Publicação',
                  controller: _controller.anoPublicacaoController,
                  onChanged: (s) => _controller.anoPublicacaoController,
                  onLeave: (currentValue) => _controller.onLeaveAnoPublicacao(),
                  validator: (value) => _controller.erroAnoPublicacao(value),
                ),
                const SizedBox(height: 8),
                GcTextFormField(
                  'Gênero',
                  controller: _controller.generoController,
                  onChanged: (s) => _controller.generoController,
                  onLeave: (currentValue) => _controller.onLeaveGenero(),
                  validator: (value) => _controller.erroGenero(value),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
