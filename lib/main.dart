import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'dart:html';
// Import this library to access Platform class

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter App',
      home: Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: Center(
                        child: Image.asset(
                          'web/logo_company.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Card(
                        elevation: 4,
                        margin: EdgeInsets.zero,
                        color: const Color(0xFF306FA5),
                        child: Padding(
                          padding: const EdgeInsets.all(0.1),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 4,
                                child: Image.asset(
                                  'web/radouane.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(width: 30),
                              const Expanded(
                                flex: 6,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Radouane Cherkaoui',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Manager IFM-IT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'IFM-IT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Card(
                        elevation: 4,
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.phone,
                                        color: Color(0xFF306FA5),
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Contact Us',
                                        style: TextStyle(
                                          color: Color(0xFF306FA5),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                              Text(
                                '    Call Us',
                                style: TextStyle(
                                  color: Color(0xFF306FA5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '    +212 60 12 34 50',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                '   Email Us',
                                style: TextStyle(
                                  color: Color(0xFF306FA5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '   example@example.com',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                '   Address',
                                style: TextStyle(
                                  color: Color(0xFF306FA5),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                '   Imm 13 B RDC APPT N 01, imp. AV Patrice Lumumba',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                '   Hassan, Rabat, Maroc',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Card(
                        elevation: 4,
                        margin: EdgeInsets.zero,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  launch('https://www.ifm-it.center/');
                                },
                                child: const Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'IFM-IT',
                                        style: TextStyle(
                                          color: Color(0xFF306FA5),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      color: Color(0xFF306FA5),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 16),
                              GestureDetector(
                                onTap: () {
                                  launch(
                                      'https://www.facebook.com/profile.php?id=100093312114806');
                                },
                                child: const Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Facebook',
                                        style: TextStyle(
                                          color: Color(0xFF306FA5),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      color: Color(0xFF306FA5),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 100),
                  ],
                ),
              ),
              Positioned(
                left: 16,
                bottom: 16,
                child: FloatingActionButton(
                  onPressed: () async {
                    downloadVCF();
                  },
                  child: const Icon(Icons.contact_phone),
                  backgroundColor: const Color(0xFF306FA5),
                ),
              ),
              Positioned(
                right: 16,
                bottom: 16,
                child: FloatingActionButton(
                  onPressed: () {
                    Share.share('https://www.ifm-it.center/');
                  },
                  child: const Icon(Icons.share),
                  backgroundColor: const Color(0xFF306FA5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void downloadVCF() {
  final String vcfFileName = 'RadouaneCherkaoui.vcf';
  final String sourcePath = 'web/$vcfFileName'; // Path to the VCF file

  // Create an anchor element
  final anchor = AnchorElement(href: sourcePath)
    ..setAttribute(
        'download', vcfFileName); // Set download attribute to force download

  // Append the anchor element to the body and trigger a click
  document.body?.append(anchor);
  anchor.click();

  // Clean up: remove the anchor element from the DOM
  anchor.remove();

  print('VCF file download triggered in browser.');
}
