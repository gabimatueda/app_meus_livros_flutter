// import 'package:flutter_application_1/core/database/sqflite/DAO/livro_dao.dart';
// import 'package:flutter_application_1/core/database/interfaces/DAO/ilivros_dao.dart';
// import 'package:flutter_application_1/core/entities/livro.dart';
// import 'package:sqflite/sqflite.dart';

// class LivroDAO implements ILivroDAO {
//   final Database _db;
//   static String tableName = 'livro';

//   LivroDAO(this._db);

//   @override
//   Future<void> insertList(List<Livro> listLivro) async {
//     await _db.transaction((t) async {
//       for (var livro in listLivro) {
//         var ret = await t.query(
//           tableName,
//           where: 'id = ?',
//           whereArgs: [livro.id],
//         );

//         var map = livro.toMap();

//         if (ret.isNotEmpty) {
//           await t.update(
//             tableName,
//             map,
//             where: 'id = ?',
//             whereArgs: [livro.id],
//           );
//         } else {
//           await t.insert(
//             tableName,
//             map,
//             conflictAlgorithm: ConflictAlgorithm.ignore,
//           );
//         }
//       }
//     });
//   }

//   @override
//   Future<void> save(Livro livro) async {
//     var ret = await selectOne(livro.id);

//     if (ret != null) {
//       await _db.update(
//         tableName,
//         livro.toMap(),
//         where: 'id = ?',
//         whereArgs: [livro.id],
//       );
//     } else {
//       await _db.insert(
//         tableName,
//         livro.toMap(),
//         conflictAlgorithm: ConflictAlgorithm.replace,
//       );
//     }
//   }

//   @override
//   Future<List<Livro>> selectMany() async {
//     List<Map<String, dynamic>> result = await _db.query(
//       tableName,
//     );

//     return result.map((data) => Livro.fromMap(data)).toList();
//   }

//   @override
//   Future<Livro?> selectOne(int idLivro) async {
//     List<Map<String, dynamic>> result = await _db.query(
//       tableName,
//       where: 'id = ?',
//       whereArgs: [idLivro],
//       limit: 1,
//     );

//     return result.isNotEmpty ? Livro.fromMap(result.first) : null;
//   }

//   @override
//   Future<void> delete(Livro livro) async {
//     await _db.delete(
//       tableName,
//       where: 'id = ?',
//       whereArgs: [livro.id],
//     );
//   }

//   @override
//   String get createLivroTable => '''
//     CREATE TABLE IF NOT EXISTS $tableName (
//       id INTEGER PRIMARY KEY NOT NULL,
//       titulo TEXT NOT NULL,
//       autor TEXT NOT NULL,
//       anoPublicacao INTEGER,
//       genero TEXT
//     );
//   ''';

//   @override
//   String get deleteLivroTable => '''
//     DROP TABLE IF EXISTS $tableName;
//   ''';
// }
