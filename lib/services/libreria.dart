import 'package:dio/dio.dart';

class StephenKingApiService {
  final Dio dio = Dio();

  Future<List<dynamic>> fetchStephenKingBooks() async {
    try {
      final response = await dio.get('https://stephen-king-api.onrender.com/books');
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to load books');
      }
    } catch (e) {
      throw Exception('Failed to load books: $e');
    }
  }
}