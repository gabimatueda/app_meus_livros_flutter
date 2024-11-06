// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_livros_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListaLivrosPageController on _ListaLivrosPageController, Store {
  late final _$livrosAtom =
      Atom(name: '_ListaLivrosPageController.livros', context: context);

  @override
  ObservableList<Livro> get livros {
    _$livrosAtom.reportRead();
    return super.livros;
  }

  @override
  set livros(ObservableList<Livro> value) {
    _$livrosAtom.reportWrite(value, super.livros, () {
      super.livros = value;
    });
  }

  late final _$carregandoAtom =
      Atom(name: '_ListaLivrosPageController.carregando', context: context);

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

  late final _$carregarLivrosAsyncAction = AsyncAction(
      '_ListaLivrosPageController.carregarLivros',
      context: context);

  @override
  Future<void> carregarLivros() {
    return _$carregarLivrosAsyncAction.run(() => super.carregarLivros());
  }

  late final _$_ListaLivrosPageControllerActionController =
      ActionController(name: '_ListaLivrosPageController', context: context);

  @override
  void dispose() {
    final _$actionInfo = _$_ListaLivrosPageControllerActionController
        .startAction(name: '_ListaLivrosPageController.dispose');
    try {
      return super.dispose();
    } finally {
      _$_ListaLivrosPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
livros: ${livros},
carregando: ${carregando}
    ''';
  }
}
