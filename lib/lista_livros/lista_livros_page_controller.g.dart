// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_livros_page_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListaLivrosPageController on _ListaLivroPageController, Store {
  late final _$carregandoAtom =
      Atom(name: '_ListaLivroPageController.carregando', context: context);

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

  late final _$_ListaLivroPageControllerActionController =
      ActionController(name: '_ListaLivroPageController', context: context);

  @override
  void dispose() {
    final _$actionInfo = _$_ListaLivroPageControllerActionController
        .startAction(name: '_ListaLivroPageController.dispose');
    try {
      return super.dispose();
    } finally {
      _$_ListaLivroPageControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
carregando: ${carregando}
    ''';
  }
}
