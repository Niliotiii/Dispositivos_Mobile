import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final String book;
  final String releaseDate;
  final String coverImageUrl;
  final String synopsis;
  final String author;
  final String authorBiography;
  final String publisher;

  const BookDetails({
    Key? key,
    required this.book,
    required this.releaseDate,
    required this.coverImageUrl,
    required this.synopsis,
    required this.author,
    required this.authorBiography,
    required this.publisher,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Detalhes do Livro'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Sobre o Livro'),
              Tab(text: 'Mais Detalhes'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              padding: const EdgeInsets.all(10),
              children: [
                Text('Nome do Livro: $book', style: const TextStyle(fontSize: 30)),
                const SizedBox(height: 10),
                Text('Data de Lançamento: $releaseDate', style: const TextStyle(fontSize: 15)),
                const SizedBox(height: 10),
                Image.network(coverImageUrl),
                const SizedBox(height: 10),
                Text('Sinopse: $synopsis', style: const TextStyle(fontSize: 20), textAlign: TextAlign.justify),
              ],
            ),
            ListView(
              padding: const EdgeInsets.all(8.0),
              children: [
                Text('Autor: $author', style: const TextStyle(fontSize: 30)),
                const SizedBox(height: 10),
                Text('Biografia do Autor: $authorBiography', style: const TextStyle(fontSize: 20), textAlign: TextAlign.justify),
                const SizedBox(height: 10),
                Text('Editora: $publisher', style: const TextStyle(fontSize: 30)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}