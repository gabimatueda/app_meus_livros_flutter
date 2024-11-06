import 'package:flutter/material.dart';
import 'package:flutter_application_1/meus_livros/core/entities/livro.dart';
import 'package:flutter_application_1/meus_livros/core/repositories/livro_repository_bd.dart';
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

  Livro criarLivro() {
    return Livro(
      titulo: titulo, 
      autor: autor, 
      anoPublicacao: int.parse(anoPublicacaoController.text), 
      genero: genero);
  }

  // @action
  // Future<void> salvarLivro() async {
  //  if (carregando) return;
   
  //  carregando = true;
  // }

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