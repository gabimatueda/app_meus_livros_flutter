import 'package:flutter_application_1/meus_livros/core/entities/livro.dart';
import 'package:flutter_application_1/meus_livros/core/services/livros_service.dart';
import 'package:mobx/mobx.dart';

part 'lista_livros_page_controller.g.dart';

class ListaLivrosPageController = _ListaLivrosPageController
  with _$ListaLivrosPageController;

abstract class _ListaLivrosPageController
 with Store {

  late final LivroService livroService;
  
  @observable
  ObservableList<Livro> livros = ObservableList<Livro>();

  @observable
  bool carregando = false;

  @action
  Future<void> carregarLivros() async {
    carregando = true;
    try {
      final listaLivros = await livroService.obterLivros();
      livros = ObservableList.of(listaLivros);
    } catch (e) {
      print("Erro ao carregar livros: $e");
    } finally {
      carregando = false;
    }
  }

  @action
  void dispose() {
    
  }
}