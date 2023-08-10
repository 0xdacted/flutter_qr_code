import 'package:flutter/material.dart';
import 'qr_code.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widget Preview',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PreviewPage(),
    );
  }
}

class PreviewPage extends StatelessWidget {
  const PreviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Preview'),
      ),
      body: const Center(
        // Add this QRCode widget in place of the Container
        child: QRCode(
          qrSize: 320,
          qrData: 'https://flutterflow.io',
        ),
      ),
    );
  }
}

