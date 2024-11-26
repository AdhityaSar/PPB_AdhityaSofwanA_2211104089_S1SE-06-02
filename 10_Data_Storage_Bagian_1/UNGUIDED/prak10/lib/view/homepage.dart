import 'package:flutter/material.dart';
import 'package:prak10/helper/db_helper.dart';
import 'package:prak10/model/mahasiswa.dart';
import 'input_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Mahasiswa> _mahasiswaList = [];

  void _loadData() async {
    final data = await DBHelper().getMahasiswa();
    setState(() {
      _mahasiswaList = data;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('SQLite Biodata Mahasiswa')),
      body: ListView.builder(
        itemCount: _mahasiswaList.length,
        itemBuilder: (context, index) {
          final mahasiswa = _mahasiswaList[index];
          return Card(
            child: ListTile(
              title: Text(mahasiswa.nama),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('NIM: ${mahasiswa.nim}'),
                  Text('Alamat: ${mahasiswa.alamat}'),
                  Text('Hobi: ${mahasiswa.hobi}'),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => InputPage()),
          );
          _loadData();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
