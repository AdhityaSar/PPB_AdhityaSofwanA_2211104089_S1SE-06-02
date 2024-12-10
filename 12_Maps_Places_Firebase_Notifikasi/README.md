Praktikum Pertemuan ke 12 <br>
Adhitya Sofwan Al-Rasyid <br>
2211104089
# **MAPS AND PLACES**

# GUIDED

## Google Maps API

Merupakan salah satu layanan dari Google untuk membantu developer menciptakan aplikasi yang menggunakan fitur peta atau maps. Pada Google Maps API kita dapat memasang marker, menggunakan fitur route, mencari tempat, dan masih banyak lagi.

### API KEY
Dapatkan API Key pada cloud.google.com

![1](GUIDED/Dok/1.png)

### Android
- Set minSdkVersion di android/app/build.gradle:
```
android {
    defaultConfig {
        minSdkVersion 20
    }
}
```
Ini dimaksudkan agar aplikasinya support atau bersedia pada Android SDK 20 atau lebih tinggi.

- Tambahkan API key pada manifest aplikasi 
android/app/src/main/AndroidManifest.xml
```
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    <application
        android:label="prak12"
        android:name="${applicationName}"
        android:icon="@mipmap/ic_launcher">
        <meta-data android:name="com.google.android.geo.API_KEY" android:value="AIzaSyB6BgCgiZTtQJDIGBEb3S9iXnwL4FJtWac"/> 
```

## Menambah Packages Google Maps

```
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  google_maps_flutter: ^2.10.0
```

Kode :
```
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapSscreenState();
}

class _MapSscreenState extends State<MapsScreen> {
  static final LatLng _kMapCenter =
    LatLng(19.018255973653343, 72.84793849278007);

  static final CameraPosition _kInitialPosition =
    CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Demo'),
      ),
      body: GoogleMap(
        initialCameraPosition: _kInitialPosition,
        myLocationEnabled: true,
      ),
    );
  }
}
```

output :
![2](GUIDED/Dok/2.png)



# =======================

# UNGUIDED

Dari tugas guided yang telah dikerjakan, lanjutkan hingga ke bagian place picker untuk memberikan informasi mengenai lokasi yang ditunjuk di peta.

## Source Code

dependency :
```
dependencies:
  flutter:
    sdk: flutter
  google_maps_flutter: ^2.10.0
  place_picker_google: ^0.0.13
```

mapscreen.dart
```
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:place_picker_google/place_picker_google.dart';

class MapsScreen extends StatefulWidget {
  const MapsScreen({super.key});

  @override
  State<MapsScreen> createState() => _MapSscreenState();
}

class _MapSscreenState extends State<MapsScreen> {
  static final LatLng _kMapCenter =
      LatLng(19.018255973653343, 72.84793849278007);

  static final CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  LatLng customLocation = _kMapCenter;

  void showPlacePicker() async {
    LocationResult result = await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => PlacePicker(
          apiKey: "AIzaSyB6BgCgiZTtQJDIGBEb3S9iXnwL4FJtWac",
          initialLocation: customLocation,
        ),
      ),
    );
    
    print('Picked Location: ${result.latLng}');
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Demo'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _kInitialPosition,
            myLocationEnabled: true,
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              onPressed: showPlacePicker,
              child: Icon(Icons.place),
            ),
          ),
        ],
      ),
    );
  }
}

```

main.dart
```
import 'package:flutter/material.dart';
import 'package:prak12/mapscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MapsScreen(),
    );
  }
}
```

## Output

![1](UNGUIDED/Dok/1.png)
![2](UNGUIDED/Dok/2.png)

## Deskripsi Program

Program ini adalah modifikasi dari program guided, modifikasi yang dilakukan yaitu menambahkan place picker untuk memberikan informasi mengenai lokasi yang ditunjuk di peta.
