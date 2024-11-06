import 'package:flutter_application_1/meus_livros/api/api.dart';
import 'package:flutter_application_1/meus_livros/core/entities/livro.dart';

class LivroRepositorioAPI {
  final LivroAPI livroAPI;

  LivroRepositorioAPI(this.livroAPI);

  Future<List<Livro>> obterLivrosDaAPI() => livroAPI.obterLivrosDaAPI();

  Future<void> inserirLivroNaAPI(Livro livro) =>
      livroAPI.inserirLivroNaAPI(livro);

  Future<Livro?> buscarLivroPorTitulo(String titulo) =>
      livroAPI.buscarLivroPorTitulo(titulo);
}
