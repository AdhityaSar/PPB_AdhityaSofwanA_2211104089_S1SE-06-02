import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

// Kelas DatabaseHelper untuk mengelola database
class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  // Factory constructor untuk mengembalikan instance singleton
  factory DatabaseHelper() {
    return _instance;
  }

  // Private Constructor
  DatabaseHelper._internal();


  // Getter
  Future<Database> get database async{
    if(_database != null) return _database!;
    {
      _database = await _initDatabase();
      return _database!;
    }
  }

  Future<Database> _initDatabase() async{
    // Mendapatkan path untuk database
    String path = join(await getDatabasesPath(),
    'my_prakdatabase.db');
    // Membuka database
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
      );
  }

  Future<void> _onCreate(Database db, int version) async{
    await db.execute('''
  CREATE TABLE my_table(
  id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  title TEXT,
  description TEXT,
  createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)
  ''');
  }

  Future<int> insert(Map<String, dynamic> row)async{
    Database db = await database;
    return await db.insert('my_table', row);
  }

  // Metode untuk mengambil semua data dari table
  Future<List<Map<String, dynamic>>> queryAllRows() async{
    Database db = await database;
    return await db.query('my_table');
  }

  // Metode untuk mengupdate data dari table
  Future<int> update(Map<String, dynamic> row) async{
    Database db = await database;
    int id = row['id'];
    return await db.update('my_table', row, where: 'id = ?', whereArgs: [id]);
  }

  Future<int> delete(int id) async{
    Database db = await database;
    return await db.delete('my_table', where: 'id = ?', whereArgs: [id]);
  }
}