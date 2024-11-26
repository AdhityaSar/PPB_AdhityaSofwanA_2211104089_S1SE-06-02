import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:prak10/model/mahasiswa.dart';

class DBHelper {
  static final DBHelper _instance = DBHelper._internal();
  factory DBHelper() => _instance;
  DBHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    return await openDatabase(
      join(dbPath, 'mahasiswa.db'),
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE mahasiswa(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nama TEXT,
            nim TEXT,
            alamat TEXT,
            hobi TEXT
          )
        ''');
      },
      version: 1,
    );
  }

  Future<void> insertMahasiswa(Mahasiswa mahasiswa) async {
    final db = await database;
    await db.insert('mahasiswa', mahasiswa.toMap());
  }

  Future<List<Mahasiswa>> getMahasiswa() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('mahasiswa');
    return List.generate(maps.length, (i) => Mahasiswa.fromMap(maps[i]));
  }
}
