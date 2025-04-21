import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(BaseOptions(
    baseUrl: 'http://localhost:3000', // 'localhost' for Android emulator
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
  ));

  Future<List<dynamic>> fetchUsers() async {
    try {
      final response = await _dio.get('/users');
      return response.data;
    } catch (e) {
      print('API Error: $e');
      return [];
    }
  }
}
