import 'package:flutter/material.dart';

void main() {
  runApp(A11App());
}

class A11App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('A11 Uygulaması'),
        ),
        body: Stack(
          children: [
            // Arka plana mor logo ekle
            Positioned.fill(
              child: Container(
                color: Colors.purple,
                child: Center(
                  child: Image.network(
                    'https://example.com/your_logo.png', // Mor logonun URL'si
                    width: 150.0, // Logonun genişliği
                    height: 50.0, // Logonun yüksekliği
                  ),
                ),
              ),
            ),
            // Üzerine beyaz dikdörtgen alan ve formu ekle
            Positioned(
              top: 50.0,
              left: 20.0,
              right: 20.0,
              child: Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Ad'),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Soyad'),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'E-posta'),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Telefon Numarası'),
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Şifre'),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        // Kayıt butonuna basıldığında yapılacak işlemler
                      },
                      child: Text('Kayıt Ol'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
