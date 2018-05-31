import 'dart:async';
import 'package:leveldb/leveldb.dart';

void main(){
  print("main");
  database();
}

Future<dynamic> database() async {
  LevelDB<String, String> db = await LevelDB.openUtf8("/home/pepe/Documentos/dart/aprendiendo/db/level.db");
  //db.put("abc", "def");
  String value = db.get("abc");
  print("value is $value"); // value2 is def
}