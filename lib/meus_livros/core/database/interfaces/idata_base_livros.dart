import 'package:flutter_application_1/meus_livros/core/database/interfaces/DAO/ilivros_dao.dart';

abstract class IDataBaseLivros {
  Future<void> initDb();
  ILivroDAO get livro;
}