import 'package:flutter/material.dart';
import 'book_model.dart';
import 'book_service.dart';

class BooksPage extends StatefulWidget {
  final String? category;

  const BooksPage({super.key, this.category});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  late Future<List<Book>> futureBooks;

  @override
  void initState() {
    super.initState();
    futureBooks = BookService().getBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.category == null
              ? 'Koleksi Buku'
              : 'Kategori ${widget.category}',
        ),
      ),

      body: FutureBuilder<List<Book>>(
        future: futureBooks,

        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }

          final books = snapshot.data!;

          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: books.length,

            itemBuilder: (context, index) {
              final book = books[index];

              return Card(
                margin: const EdgeInsets.only(bottom: 15),

                child: ListTile(
                  leading: Image.network(
                    book.image,
                    width: 60,
                    fit: BoxFit.cover,
                  ),

                  title: Text(book.title),

                  trailing: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${book.title} berhasil dipinjam'),
                        ),
                      );
                    },

                    child: const Text('Pinjam'),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
