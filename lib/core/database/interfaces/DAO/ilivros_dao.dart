import 'package:flutter_application_1/core/entities/livro.dart';

abstract class ILivroDAO {
  Future<void> save(Livro entity);

  Future<void> delete(Livro entity);

  Future<List<Livro>> selectMany();

  Future<Livro?> selectOne(int idTipologia);

  Future<void> insertList(List<Livro> listaLivro);

  String get createLivroTable;

  String get deleteLivroTable;
}
