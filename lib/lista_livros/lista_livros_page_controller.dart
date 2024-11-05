import 'package:mobx/mobx.dart';

part 'lista_livros_page_controller.g.dart';

class ListaLivrosPageController = _ListaLivroPageController
  with _$ListaLivrosPageController;

abstract class _ListaLivroPageController
 with Store {

  @observable
  bool carregando = false;


  @action
  void dispose() {
    
  }
}