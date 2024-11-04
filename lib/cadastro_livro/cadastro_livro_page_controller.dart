import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'cadastro_livro_page_controller.g.dart';

class CadastroLivroPageController = _CadastroLivroPageController
    with _$CadastroLivroPageController;

abstract class _CadastroLivroPageController with Store {

  @observable
  bool carregando = false;

  @observable
  String titulo = '';
  TextEditingController tituloController = TextEditingController();

  @observable
  String autor = '';
  TextEditingController autorController = TextEditingController();
  
  @observable
  String anoPublicacao = '';
  TextEditingController anoPublicacaoController = TextEditingController();

  @observable
  String genero = '';
  TextEditingController generoController = TextEditingController();

 // ObservableList<String> listaGeneroSelecionado = ObservableList();

  List<String> listaGenero = [
    'Fantasia',
    'Romance',
    'Didático',
    'Fiçção',
    'Biografia',  
    ];

  @action
  void setTitulo(String valor) {
    if (valor == '') {
    return;
    }

    titulo = valor;
  }

  String onLeaveTitulo() {
    return titulo = titulo;
  }

  String? erroTitulo(String? valor) {
    if ((valor ?? '').trim() == '') {
      return 'O título é obrigatório';
    }
    
    return null;
  }

  @action
  void setAutor(String valor) {
    if (valor == '') {
      return;
    }

    autor = valor;
  }

  String onLeaveAutor() {
    return autor = autor;
  }

  String? erroAutor(String? valor) {
    if ((valor ?? ''). trim() == '') {
      return 'O autor é obrigatório';
    }

    return null;
  }

  @action
  void setAnoPublicacao(String valor) {
    if (valor == '') {
      return;
    }

    anoPublicacao = valor;
  }

  String onLeaveAnoPublicacao() {
    return anoPublicacao = anoPublicacao;
  }

  String? erroAnoPublicacao(String? valor) {
    if ((valor ?? '').trim() == '') {
      return 'O ano de publicação é obrigatório';
    }

    return null;
  }

  @action
  void setGenero(String valor) {
    if (valor == '') {
      return;
    }

    genero = valor; 
  }
  
  String onLeaveGenero() {
    return genero = genero;
  }

  String? erroGenero(String? valor) {
    if ((valor ?? ''). trim() == '') {
      return 'O gênero é obrigatório';
    } 

    return null;
  }

  @action
  void dispose() {
    tituloController.dispose();
    autorController.dispose();
    anoPublicacaoController.dispose();
    generoController.dispose();
  }
}