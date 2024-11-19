import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerScreen extends StatefulWidget {
  final ImageSourceType type;

  const ImagePickerScreen(this.type, {Key? key}) : super(key: key);

  @override
  State<ImagePickerScreen> createState() => _ImagePickerScreenState(this.type);
}

class _ImagePickerScreenState extends State<ImagePickerScreen> {
  File? _image;
  late ImagePicker imagePicker;
  final ImageSourceType type;

  _ImagePickerScreenState(this.type);

  @override
  void initState() {
    super.initState();
    imagePicker = ImagePicker();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(type == ImageSourceType.camera
            ? "Image from Camera"
            : "Image from Gallery"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 52,
          ),
          Center(
              // Mengambil gambar dari kamera atau galeri
              child: GestureDetector(
                  onTap: () async {
                    // Operasi ternary untuk memilih sumber gambar
                    var source = type == ImageSourceType.camera
                        ? ImageSource.camera
                        : ImageSource.gallery;

                    // Menyimpan gambar pada variabel image
                    XFile? image = await imagePicker.pickImage(
                      source: source,
                      imageQuality: 50,
                      preferredCameraDevice: CameraDevice.front,
                    );
                    if (image != null) {
                      setState(() {
                        _image = File(image.path);
                      });
                    }
                  },
                  child: Container(
                    width: 200,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.red[200],
                    ),

                    // Menampilkan gambar dari kamera atau galeri
                    child: _image != null
                        ? Image.file(
                            _image!,
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.fitHeight,
                          )

                        // Jika tidak ada gambar yang dipilih
                        : Container(
                            decoration: BoxDecoration(
                              color: Colors.red[200],
                            ),
                            width: 200,
                            height: 200,
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.grey[800],
                            ),
                          ),
                  )))
        ],
      ),
    );
  }
}

enum ImageSourceType { camera, gallery }