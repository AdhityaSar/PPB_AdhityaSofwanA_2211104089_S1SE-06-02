# TUGAS PENDAHULUAN

1. Menambahkan Google Maps Package
    - Apa nama package yang digunakan untuk mengintegrasikan Google Maps di Flutter dan sebutkan langkah-langkah yang diperlukan untuk menambahkan package Google Maps ke dalam proyek Flutter.
    - Mengapa kita perlu menambahkan API Key, dan di mana API Key tersebut diatur dalam aplikasi Flutter?
2. Menampilkan Google Maps
    - Tuliskan kode untuk menampilkan Google Map di Flutter menggunakan widget GoogleMap.
    - Bagaimana cara menentukan posisi awal kamera (camera position) pada Google Maps di Flutter?
    - Sebutkan properti utama dari widget GoogleMap dan fungsinya.
3. Menambahkan Marker
    - Tuliskan kode untuk menambahkan marker di posisi tertentu (latitude: -6.2088, longitude: 106.8456) pada Google Maps.
    - Bagaimana cara menampilkan info window saat marker diklik?
4. Menggunakan Place Picker
    - Apa itu Place Picker, dan bagaimana cara kerjanya di Flutter dan sebutkan nama package yang digunakan untuk implementasi Place Picker di Flutter.
    - Tuliskan kode untuk menampilkan Place Picker, lalu kembalikan lokasi yang dipilih oleh pengguna dalam bentuk latitude dan longitude.

# JAWABAN

1. Menambahkan Google Maps Package
    - Nama packagenya adalah `google_maps_flutter`, cara menambahkannya ke proyek flutter yaitu dengan menambahkan dependency ke pubspec.yaml
    ```
    dependencies:
        google_maps_flutter: 2.10.0
    ```
    kemudian menjalankan command `flutter pub get` pada terminal.
    - API key diperlukan untuk memverifikasi aplikasi saat mengakses layanan Google Maps. API key tersebut diatur di file `android/app/src/main/AndroidManifest.xml`.
    ```
    <manifest>
    <application>
        <meta-data
            android:name="com.google.android.geo.API_KEY"
            android:value="API KEY" />
    </application>
    </manifest>
    ```

2. Menampilkan Google Maps :
    -  Kode untuk menampilkan Google Maps :
    ```
    import 'package:flutter/material.dart';
    import 'package:google_maps_flutter/google_maps_flutter.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
                home: GoogleMapScreen(),
            );
        }
    }

    class GoogleMapScreen extends StatelessWidget {
        final CameraPosition _initialCameraPosition = CameraPosition(
            target: LatLng(-6.2088, 106.8456), // Koordinat Jakarta
            zoom: 12,
        );

        @override
        Widget build(BuildContext context) {
            return Scaffold(
            appBar: AppBar(title: Text("Google Maps")),
            body: GoogleMap(
                initialCameraPosition: _initialCameraPosition,
                ),
            );
        }
    }
    ```
    - Posisi awal kamera ditentukan dengan properti `CameraPosition`.
    - Properti utama dari widget Google Maps dan fungsinya :
        - `initialCameraPosition` : untuk menentukan posisi awal kamera saat peta dimuat
        - `mapType` : untuk menentukan jenis peta (default, satelit, hybrid, atau terrain)
        - `markers` : untuk kumpulan marker yang ditampilkan pada peta
        - `onMapCreated` : untuk callback saat peta selesai dimuat
        - `onTap` : untuk callback saat user mengetuk peta
    
3. Menambahkan marker
    - Kode untuk menambahkan marker :
    ```
    class GoogleMapScreen extends StatefulWidget {
        @override
        _GoogleMapScreenState createState() => _GoogleMapScreenState();
    }

    class _GoogleMapScreenState extends State<GoogleMapScreen> {
        final CameraPosition _initialCameraPosition = CameraPosition(
            target: LatLng(-6.2088, 106.8456), // Jakarta
            zoom: 12,
        );

        final Set<Marker> _markers = {
            Marker(
                markerId: MarkerId("jakarta_marker"),
            position: LatLng(-6.2088, 106.8456),
            infoWindow: InfoWindow(title: "Jakarta", snippet: "Ibu Kota Indonesia"),
            ),
        };

        @override
        Widget build(BuildContext context) {
            return Scaffold(
                appBar: AppBar(title: Text("Google Maps with Marker")),
                body: GoogleMap(
                    initialCameraPosition: _initialCameraPosition,
                    markers: _markers,
                ),
            );
        }
    }
    ```
    - Sertakan properti `infoWindow` dalam objek `Marker` agar info window ditampilkan secara otomatis saat user mengetuk marker.

4. Menggunakan Place Picker
    - Place picker adalah fitur yang memungkinkan user memilih lokasi di peta. Fitur ini dipakai di aplikasi yang memerlukan input lokasi. Nama package dari fitur ini adalah `flutter_google_places` atau `places_picker`.
    - Kode untuk menampilkan Place Picker :
    ```
    import 'package:flutter/material.dart';
    import 'package:place_picker/place_picker.dart';

    void main() => runApp(MyApp());

    class MyApp extends StatelessWidget {
        @override
        Widget build(BuildContext context) {
            return MaterialApp(
            home: PlacePickerScreen(),
            );
        }
    }

    class PlacePickerScreen extends StatelessWidget {
        final String apiKey = "YOUR_API_KEY";

        @override
        Widget build(BuildContext context) {
            return Scaffold(
                appBar: AppBar(title: Text("Place Picker")),
                body: Center(
                    child: ElevatedButton(
                        onPressed: () async {
                            LocationResult? result = await Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => PlacePicker(apiKey),
                                ),
                            );

                            if (result != null) {
                                print("Selected Location: ${result.latLng}");
                            }
                        },
                        child: Text("Pick a Place"),
                    ),
                ),
            );
        }
    }
    ```
    Lokasi yang dipilih oleh pengguna akan dikembalikan dalam bentuk latitude dan longitude melalui objek `LocationResult`.