import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Remidi Mobile Programming Lanjut'),
          backgroundColor:
              Colors.orangeAccent, // Mengatur warna teal pada AppBar
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TeksUtama(
                  teks1: '',
                  teks2: 'DAFTAR ABSENSI #113 MOBILE PROGRAMMING LANJUT',
                  isHeader: true, // Menandai sebagai header
                ),
                TeksUtama(
                  teks1: '41. ERLAN DWIYANTO',
                  teks2: 'STI202102259',
                ),
                TeksUtama(
                  teks1: '42. DEDE ARIF PRASEPTIADI',
                  teks2: 'STI202102263',
                ),
                TeksUtama(
                  teks1: '43. LATIF KAMALUDIN',
                  teks2: 'STI202102264',
                ),
                TeksUtama(
                  teks1: '44. SEPTAHEKSA PANGGIH ARDIANSAH',
                  teks2: 'STI202102266',
                ),
                TeksUtama(
                  teks1: '45. BANGUN UTOMO PUTRA',
                  teks2: 'STI202102269',
                ),
                TeksUtama(
                  teks1: '46. YOGA SURYA PRATAMA',
                  teks2: 'STI202102270',
                  backgroundColor: Colors
                      .redAccent, // Menambahkan warna latar belakang merah pada teks
                ),
                TeksUtama(
                  teks1: '47. AJENG DWI FEBRIANA',
                  teks2: 'STI202102273',
                ),
                TeksUtama(
                  teks1: '48. YUDHA',
                  teks2: 'STI202102274',
                ),
                TeksUtama(
                  teks1: '49. AKHLIS NUR AZIZAH',
                  teks2: 'STI202102276',
                ),
                TeksUtama(
                  teks1: '50. EMI FITRIANI',
                  teks2: 'STI202102277',
                ),
                TeksUtama(
                  teks1: '51. TIYAN DESI WULANDARI',
                  teks2: 'STI202102278',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor; // Menambahkan parameter backgroundColor
  final bool isHeader; // Menambahkan parameter isHeader

  const TeksUtama({
    Key? key,
    required this.teks1,
    required this.teks2,
    this.backgroundColor, // Menambahkan parameter backgroundColor
    this.isHeader = false, // Menambahkan parameter isHeader
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isHeader) {
      // Kondisi untuk header, tidak memberikan box
      return Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 50, // Memberikan tinggi yang sama untuk setiap teks1
            child: Text(
              teks2,
              textDirection: TextDirection.ltr,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.red, // Mengatur warna teks menjadi merah
              ),
            ),
          ),
        ],
      );
    } else {
      // Kondisi untuk teks utama biasa, memberikan box
      return Container(
        margin: const EdgeInsets.all(8.0), // Memberikan margin antar box
        padding: const EdgeInsets.all(8.0), // Memberikan padding dalam box
        decoration: BoxDecoration(
          color: backgroundColor ??
              Colors.yellowAccent, // Warna latar belakang orange
          border: Border.all(
              color: Colors.black), // Memberikan border hitam pada box
        ),
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 50, // Memberikan tinggi yang sama untuk setiap teks1
              child: Text(
                teks1,
                textDirection: TextDirection.ltr,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black, // Mengatur warna teks menjadi hitam
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 30, // Memberikan tinggi yang sama untuk setiap teks2
              child: Text(
                teks2,
                textDirection: TextDirection.ltr,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black, // Mengatur warna teks menjadi hitam
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}
