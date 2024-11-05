import 'package:flutter_application_1/core/repositories/livros_repository.dart';
import 'package:flutter_application_1/core/entities/livro.dart';

class LivrosService {
  final _repo = LivroRepository();
  
  // Future<List<Livro>> obterLivro(int idLivro) async {
  //   return await _repo.obterLivro(idLivro);
  // }

  Future<void> salvarListaLivro(
    List<Livro> listLivro) async {
      await _repo.salvarListaLivro(listLivro);
    }
}