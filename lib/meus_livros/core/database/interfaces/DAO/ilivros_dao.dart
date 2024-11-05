import 'package:flutter_application_1/meus_livros/core/entities/livro.dart';

abstract class ILivroDAO {
  Future<void> save(Livro entity);

  Future<void> delete(Livro entity);

  Future<List<Livro>> selectMany();

  Future<Livro?> selectOne(int idLivro);

  Future<void> insertList(List<Livro> listaLivro);

  String get createLivroTable;

  String get deleteLivroTable;
}
