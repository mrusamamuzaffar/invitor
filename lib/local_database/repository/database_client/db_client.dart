// import 'package:invitor/local_database/domain/model/contacts.dart';
// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';
//
// class DatabaseClient{
//
//   static DatabaseClient? _instance;
//   static Database? _invitorDatabase;
//
//   static const database_Name = "Contact_Database";
//   static const database_Version = 1;
//
//   DatabaseClient._();
//
//   static DatabaseClient get getInstance {
//     if(_instance == null){
//       return _instance = DatabaseClient._();
//     }
//     return _instance!;
//   }
//
//   Future<Database> get database async {
//     if(_invitorDatabase != null)
//       return _invitorDatabase!;
//     return await _initDatabase();
//   }
//
//   Future<Database> _initDatabase() async {
//     final path = join(await getDatabasesPath(), database_Name);
//     return _invitorDatabase = await openDatabase(path, version: database_Version, onCreate: (db, version) => db.execute(Contact.create_Table),);
//   }
// }
