import 'dart:async';
import 'package:leveldb/leveldb.dart';

void main(){
  consultar();
}

void insertar(){
  put('apellido', 'valdivia').then((Null){
    print('insertó');
  }).catchError((e){
    print(e);
  });
}

void consultar(){
  get('apellido').then((data){
    print(data);
  }).catchError((e){
    print(e);
  });
}

void eliminar(){
  delete('apellido').then((Null){
    print('eliminado');
  }).catchError((e){
    print(e);
  });
}

String dbPath = '/home/pepe/Documentos/dart/aprendiendo/db/level.db';

/*
Future<dynamic> database() async {
  LevelDB<String, String> db = await LevelDB.openUtf8(dbPath);
  //db.put("abc", "def");
  String value = db.get("abc");
  print("value is $value"); // value2 is def
}
*/

Future<String> get(String key) async {
  LevelDB<String, String> db = await LevelDB.openUtf8(dbPath);
  return db.get(key);
}

Future<Null> put(String key, String value) async {
  LevelDB<String, String> db = await LevelDB.openUtf8(dbPath);
  db.put(key, value);
}

Future<String> delete(String key) async {
  LevelDB<String, String> db = await LevelDB.openUtf8(dbPath);
  return db.delete(key);
}