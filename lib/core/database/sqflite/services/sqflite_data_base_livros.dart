// import 'package:flutter_application_1/core/database/interfaces/DAO/ilivros_dao.dart';
// import 'package:flutter_application_1/core/database/sqflite/DAO/livro_dao.dart';
// import 'package:flutter_application_1/core/database/interfaces/idata_base_livros.dart';

// class SqfliteDataBaseLivros implements IDataBaseLivros {
//   static final SqfliteDataBaseLivros _instance =
//       SqfliteDataBaseLivros._internal();
//   late Database _db;

//   SqfliteDataBaseLivros._internal();

//   factory SqfliteDataBaseLivros() {
//     return _instance;
//   }
//   @override
//   Future<void> initDb() async {
//     _db = await LivrosDbProvider.instance.open();
//   }

//   @override
//   ILivroDAO get livro => LivroDAO(_db);
// }