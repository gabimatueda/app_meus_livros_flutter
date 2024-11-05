// import 'package:flutter_application_1/core/database/sqflite/DAO/livro_dao.dart';
// import 'package:flutter_application_1/core/database/interfaces/DAO/ilivros_dao.dart';

// class LivroDao implements ILivroDAO {
//   final Database _db;
//   static String tableName = 'livro';

//   LivroDao(this._db);

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
//   Future<void> delete(Livro entity) async {
//     await _db.delete(
//       tableName,
//       where: 'id = ?',
//       whereArgs: [entity.id],
//     );
//   }

//   @override
//   String get createLivroTable => '''
//     CREATE TABLE IF NOT EXISTS $tableName (
//       id INTEGER PRIMARY KEY NOT NULL,
//       desc_tipologia TEXT NOT NULL
//     );
//   ''';

//   @override
//   String get deleteLivroTable => '''
//     DROP TABLE IF EXISTS $tableName;
//   ''';
// }
