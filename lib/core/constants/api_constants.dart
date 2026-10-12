import 'package:flutter_dotenv/flutter_dotenv.dart';

// TODO 2: Setup API Constants
// 1. Definisikan baseUrl NewsAPI
// 2. Buat getter untuk mengambil API Key dari dotenv
// 3. Tentukan country (misal: 'us') dan language (misal: 'en')

class ApiConstants {
  ApiConstants._();

  static const String baseUrl =
      'https://newsapi.org/v2'; // Isi dengan base URL NewsAPI

  static String get apiKey => (dotenv.maybeGet('NEWS_API_KEY') ?? '').trim();

  //unutk klasivikasi negara yang akan di tampilkan beritanya di top healsines
  static const String country = 'id';

  //untuk bahasa yang akan di tampilkan ketika proses pencarian
  static const String language = 'id';

  // untuk memberitahu berapa baynyak berapa berita yang akna di tampilkan dalam sekali request
  static const int pageSize = 30;

  // sebagai batas waktu berapa lama aplikasi atau client dapat terhubung dengan API sebelum dianggap gagal
  static const Duration timeout = Duration(seconds: 15);
}
