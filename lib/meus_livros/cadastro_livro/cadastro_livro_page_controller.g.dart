// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cadastro_livro_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CadastroLivroPageController on _CadastroLivroPageController, Store {
  late final _$carregandoAtom =
      Atom(name: '_CadastroLivroPageController.carregando', context: context);

  @override
  bool get carregando {
    _$carregandoAtom.reportRead();
    return super.carregando;
  }

  @override
  set carregando(bool value) {
    _$carregandoAtom.reportWrite(value, super.carregando, () {
      super.carregando = value;
    });
  }

  late final _$tituloAtom =
      Atom(name: '_CadastroLivroPageController.titulo', context: context);

  @override
  String get titulo {
    _$tituloAtom.reportRead();
    return super.titulo;
  }

  @override
  set titulo(String value) {
    _$tituloAtom.reportWrite(value, super.titulo, () {
      super.titulo = value;
    });
  }

  late final _$autorAtom =
      Atom(name: '_CadastroLivroPageController.autor', context: context);

  @override
  String get autor {
    _$autorAtom.reportRead();
    return super.autor;
  }

  @override
  set autor(String value) {
    _$autorAtom.reportWrite(value, super.autor, () {
      super.autor = value;
    });
  }

  late final _$anoPublicacaoAtom = Atom(
      name: '_CadastroLivroPageController.anoPublicacao', context: context);

  @override
  String get anoPublicacao {
    _$anoPublicacaoAtom.reportRead();
    return super.anoPublicacao;
  }

  @override
  set anoPublicacao(String value) {
    _$anoPublicacaoAtom.reportWrite(value, super.anoPublicacao, () {
      super.anoPublicacao = value;
    });
  }

  late final _$generoAtom =
      Atom(name: '_CadastroLivroPageController.genero', context: context);

  @override
  String get genero {
    _$generoAtom.reportRead();
    return super.genero;
  }

  @override
  set genero(String value) {
    _$generoAtom.reportWrite(value, super.genero, () {
      super.genero = value;
    });
  }

  late final _$_CadastroLivroPageControllerActionController =
      ActionController(name: '_CadastroLivroPageController', context: context);

  @override
  void setTitulo(String valor) {
    final _$actionInfo = _$_CadastroLivroPageControllerActionController
        .startAction(name: '_CadastroLivroPageController.setTitulo');
    try {
      return super.setTitulo(valor);
    } finally {
      _$_CadastroLivroPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAutor(String valor) {
    final _$actionInfo = _$_CadastroLivroPageControllerActionController
        .startAction(name: '_CadastroLivroPageController.setAutor');
    try {
      return super.setAutor(valor);
    } finally {
      _$_CadastroLivroPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAnoPublicacao(String valor) {
    final _$actionInfo = _$_CadastroLivroPageControllerActionController
        .startAction(name: '_CadastroLivroPageController.setAnoPublicacao');
    try {
      return super.setAnoPublicacao(valor);
    } finally {
      _$_CadastroLivroPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setGenero(String valor) {
    final _$actionInfo = _$_CadastroLivroPageControllerActionController
        .startAction(name: '_CadastroLivroPageController.setGenero');
    try {
      return super.setGenero(valor);
    } finally {
      _$_CadastroLivroPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void dispose() {
    final _$actionInfo = _$_CadastroLivroPageControllerActionController
        .startAction(name: '_CadastroLivroPageController.dispose');
    try {
      return super.dispose();
    } finally {
      _$_CadastroLivroPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
carregando: ${carregando},
titulo: ${titulo},
autor: ${autor},
anoPublicacao: ${anoPublicacao},
genero: ${genero}
    ''';
  }
}
