import 'package:flutter/material.dart';
import 'package:flutter_application_1/lista_livros/lista_livros_page_controller.dart';
import 'package:flutter_application_1/widgets/app_loading_widget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class ListaLivrosPage extends StatefulWidget {
  const ListaLivrosPage({super.key});

  @override
  State<ListaLivrosPage> createState() => _ListaLivrosPageState();
}

class _ListaLivrosPageState extends State<ListaLivrosPage> {
  late ListaLivrosPageController _controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _controller = ListaLivrosPageController();
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
        title: const Text('Cabeceira'),
      ),
      body: Observer(
        builder: (ctx) => Visibility(
          replacement: const AppLoadingWidget(),
          visible: !_controller.carregando,
          child: Form(
            key: _formKey,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    'Leituras',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class CardLivro extends StatelessWidget {}