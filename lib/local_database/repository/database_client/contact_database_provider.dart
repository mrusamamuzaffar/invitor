// import 'package:invitor/local_database/domain/model/contacts.dart';
// import 'package:sqflite/sqflite.dart';
// import 'db_client.dart';
//
// class ContactDatabaseClient{
//
//   Future<int> insert({required Contact contact}) async {
//     Database invitorDatabase = await DatabaseClient.getInstance.database;
//     return await invitorDatabase.insert(Contact.table_Name, contact.toMap());
//   }
//
//   Future<int> update({required Contact contact}) async {
//     Database invitorDatabase = await DatabaseClient.getInstance.database;
//     return await invitorDatabase.update(Contact.table_Name, contact.toMap(), where: '${Contact.id_Column} =?', whereArgs: [contact.primaryKey]);
//   }
//
//   Future<int> delete({required int primaryKey}) async {
//     Database invitorDatabase = await DatabaseClient.getInstance.database;
//     return await invitorDatabase.delete(Contact.table_Name, where: '${Contact.id_Column} =?', whereArgs: [primaryKey]);
//   }
//
//   Future<List<Contact>> fetch() async {
//     Database invitorDatabase = await DatabaseClient.getInstance.database;
//     var result = await invitorDatabase.query(Contact.table_Name);
//     return result.map((map) => Contact.fromMap(map)).toList();
//   }
// }