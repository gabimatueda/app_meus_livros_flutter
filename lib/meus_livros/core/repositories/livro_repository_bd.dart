import 'package:flutter_application_1/meus_livros/core/database/sqflite/DAO/livro_dao.dart';
import 'package:flutter_application_1/meus_livros/core/entities/livro.dart';

class LivroRepositorioBD {
  final LivroDAO livroDAO;

  LivroRepositorioBD(this.livroDAO);
  
  Future<List<Livro>> obterTodosLivros() => livroDAO.selectMany();

  Future<void> inserirLivro(Livro livro) => livroDAO.save(livro);

  Future<Livro?> buscarLivroPorTitulo(String titulo) => livroDAO.buscarLivroPorTitulo(titulo);
  
}
