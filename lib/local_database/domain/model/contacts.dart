class Contact {
  // int primaryKey = 0;
  String name = '';
  bool isChecked = false, isWithFamily = false;

  // static const table_Name = 'Contact';
  // static const id_Column = 'primaryKey';
  // static const name_Column = 'name';
  // static const create_Table = 'CREATE TABLE IF NOT EXISTS $table_Name ($id_Column INTEGER PRIMARY KEY, $name_Column TEXT)';

  Contact({required this.name, this.isChecked = false, this.isWithFamily = false});

  // @override
  // String toString() {
  //   return 'Contact{isChecked: $isChecked, name: $name, isWithFamily: $isWithFamily}';
  // }
  //
  // @override
  // bool operator ==(Object other) => identical(this, other) || (other is Contact && runtimeType == other.runtimeType &&
  //     primaryKey == other.primaryKey && name == other.name);
  //
  // @override
  // int get hashCode => primaryKey.hashCode ^ name.hashCode;

  // factory Contact.fromMap(Map<String, dynamic> map) {
  //   return Contact(primaryKey: map['primaryKey'], name: map['name']);
  // }

  // Map<String, dynamic> toMap() {
  //   return {
  //     'primaryKey': primaryKey,
  //     'name': name,
  //   };
  // }
}