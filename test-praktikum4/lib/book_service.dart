import 'package:dio/dio.dart';
import 'book_model.dart';

class BookService {
  final Dio dio = Dio();

  Future<List<Book>> getBooks() async {
    try {
      final response = await dio.get(
        'https://openlibrary.org/search.json?q=programming',
      );

      final List data = response.data['docs'];

      return data.map((e) => Book.fromJson(e)).toList();
    } catch (e) {
      throw Exception('Gagal mengambil data');
    }
  }
}
