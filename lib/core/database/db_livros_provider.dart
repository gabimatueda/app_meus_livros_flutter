// import 'package:flutter_application_1/core/database/sqflite/DAO/livro_dao.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

// class LivrosDbProvider extends DatabaseProvider {
//   LivrosDbProvider._();
//   static final LivrosDbProvider instance = LivrosDbProvider._();
//   Database? _database;

//   @override
//   String databaseName() {
//     return 'maestro_entregas.db';
//   }

//   @override
//   int databaseVersion() {
//     return dbVersion;
//   }

//   @override
//   Future<Database> open() async {
//     if (_database != null) return _database!;

//     _database = await initDatabase();
//     return _database!;
//   }

//   @override
//   void onUpgrade(Database db, int oldVersion, int newVersion) async {
//     await deleteDatabase(join(await getDatabasesPath(), databaseName()));
//     await open();
//   }

//   @override
//   void onCreate(Database db, int version) async {
//     await db.execute(LivroDAO(db).createLivroTable);
//   }
// }
