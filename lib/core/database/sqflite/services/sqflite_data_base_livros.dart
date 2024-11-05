// import 'package:flutter_application_1/core/database/sqflite/DAO/livro_dao.dart';
// import 'package:sqflite/sqflite.dart';

// class SqfliteDataBaseLivros implements IDataBaseLivro {
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
//   ILivrosDAO get livro => LivroDAO(_db);
// }