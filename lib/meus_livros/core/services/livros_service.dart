import 'package:flutter_application_1/meus_livros/core/entities/livro.dart';
import 'package:flutter_application_1/meus_livros/core/repositories/livro_repository_bd.dart';
import 'package:flutter_application_1/meus_livros/core/repositories/livro_repository_api.dart';


class LivroService {
  final LivroRepositorioBD repositorioBD;
  final LivroRepositorioAPI repositorioAPI;

  LivroService(this.repositorioBD, this.repositorioAPI);

  Future<List<Livro>> obterLivros() async {
    try {
      final livrosAPI = await repositorioAPI.obterLivrosDaAPI();
      if (livrosAPI.isNotEmpty) {
        for (var livro in livrosAPI) {
          await repositorioBD.inserirLivro(livro);
        }
        return livrosAPI;
      } else {
        return await repositorioBD.obterTodosLivros();
      }
    } catch (e) {
      return await repositorioBD.obterTodosLivros();
    }
  }

  Future<void> salvarLivro(Livro livro) async {
    await repositorioBD.inserirLivro(livro);
  }

  Future<Livro?> buscarLivroPorTitulo(String titulo) async {
    return await repositorioBD.buscarLivroPorTitulo(titulo);
  }
}
