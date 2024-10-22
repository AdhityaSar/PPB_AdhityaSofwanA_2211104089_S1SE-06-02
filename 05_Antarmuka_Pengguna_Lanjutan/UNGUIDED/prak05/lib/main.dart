import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Map<String, String>> tempatWisataList = [
    {
      'name': 'Lokawisata Baturraden',
      'description':
          'Taman rekreasi di lereng gunung dengan mata air panas, air terjun, kolam renang alami & arena bermain.',
      'imageUrl':
          "https://asset.kompas.com/crops/goNe8LjgsUdKo6OyTlRViyc2Ft0=/0x0:0x0/750x500/data/photo/2021/08/27/612878ce84e64.jpg"
    },
    {
      'name': 'Hutan Pinus Limpakuwus',
      'description':
          'Hutan yang berada di kawasan wisata Baturaden, yang berada di ketinggian 750 mdpl. Tempat ini cocok menjadi tempat wisata dari berbagai kalangan..',
      'imageUrl':
          "https://awsimages.detik.net.id/community/media/visual/2023/11/01/wisata-hutan-pinus-limpakuwus_169.jpeg?w=600&q=90"
    },
    {
      'name': 'Telaga Sunyi',
      'description':
          'Telaga alami dengan air terjun kecil yang menawarkan suasana tenang.',
      'imageUrl':
          "https://visitjawatengah.jatengprov.go.id/assets/images/730c64c2-1e01-41d2-8e4a-36e813e98252.jpg"
    },
    {
      'name': 'Goa Sarabadak',
      'description':
          'Goa alami dengan stalaktit dan stalagmit yang indah, cocok untuk petualangan.',
      'imageUrl':
          "https://asset-2.tstatic.net/banyumas/foto/bank/images/goa-sarabadak.jpg"
    },
    {
      'name': 'Curug Ceheng',
      'description':
          'Air terjun dengan ketinggian sekitar 30 meter, menawarkan pemandangan alam yang menakjubkan.',
      'imageUrl':
          "https://cdn.idntimes.com/content-images/community/2022/01/20220124-230259-329ae2b286ff7799fbbec7d4597d307a-869a438d84b25238ee93e1499cf048f0_600x400.jpg"
    },
    {
      'name': 'Curug Jenggala',
      'description':
          'Air terjun dengan aliran air yang deras, cocok untuk kegiatan arung jeram.',
      'imageUrl':
          "https://asset.kompas.com/crops/vz0cyYnm5q3faqfFPfpdFbLpAUI=/0x83:1000x750/750x500/data/photo/2022/06/02/62980a78e6a0d.jpg"
    },
    {
      'name': 'Sendang Bidadari',
      'description':
          'Kolam air panas alami dengan pemandangan yang indah, cocok untuk bersantai.',
      'imageUrl':
          "https://thumb.tvonenews.com/thumbnail/2022/01/14/61e123e4bf0aa-sendang-bidadari-spot-cantik-tersembunyi-di-baturaden_tvonenews_1265_711.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Rekomendasi Wisata Banyumas"),
              background: Image.network(
                "https://asset.kompas.com/crops/goNe8LjgsUdKo6OyTlRViyc2Ft0=/0x0:0x0/750x500/data/photo/2021/08/27/612878ce84e64.jpg",
                fit: BoxFit.cover,
              ),
            ),
            floating: true,
            pinned: true,
            backgroundColor: Colors.deepPurple,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final place = tempatWisataList[index];
                return Card(
                  margin: EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: Image.network(
                      place['imageUrl']!,
                      fit: BoxFit.cover,
                      width: 100,
                      height: 100,
                    ),
                    title: Text(
                      place['name']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(place['description']!),
                    onTap: () {
                      print("Anda telah mengklik tempat: ${place['name']}");
                    },
                  ),
                );
              },
              childCount: tempatWisataList.length,
            ),
          ),
        ],
      ),
    );
  }
}
