import 'package:flutter/material.dart';

class MySearchDelegate extends SearchDelegate {
  List<String> searchResult = [
    'Blue Lock',
    'Demon Slayer',
    'Attack On Titan',
    'Tower Of God',
  ];
  List<Book> books2 = allBooks;
  @override
  Widget? buildLeading(BuildContext context) =>
      IconButton(onPressed: () => close(context, null), icon: const Icon(Icons.arrow_back));

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null);
              } else {
                query = "";
              }
            },
            icon: const Icon(Icons.clear))
      ];

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Text(
          query,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = allBooks.where((book) {
      final bookTitle = book.title.toLowerCase();
      final input = query.toLowerCase();

      return bookTitle.contains(input);
    }).toList();

    return Expanded(
      child: ListView.builder(
        itemCount: suggestions.length,
        itemBuilder: (context, index) {
          final book = suggestions[index];

          return ListTile(
              leading: Image.network(
                book.urlImage,
                centerSlice: Rect.largest,
              ),
              title: Text(book.title),
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SizedBox(
                            child: Image.network(book.urlImage),
                          ))));
        },
      ),
    );
  }
}

class Book {
  final String title;
  final String urlImage;

  const Book({
    required this.title,
    required this.urlImage,
  });
}

const allBooks = [
  Book(
      title: 'Blue Lock',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(title: 'Demon Slayer', urlImage: 'https://wallpapercave.com/wp/wp6586585.jpg'),
  Book(
      title: 'Tower Of God',
      urlImage:
          'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1611077720l/56755805._SX318_.jpg'),
  Book(
      title: 'Solo Leveling',
      urlImage: 'https://d30womf5coomej.cloudfront.net/sa/26/3011639e-c9af-4eb7-936c-a4b0868ea868_z.jpg'),
  Book(
      title: 'Leveling With The Gods',
      urlImage: 'https://levelingwithgods.com/wp-content/uploads/2021/12/Manga-Covers-2-1.png'),
  Book(
      title: 'Hunter X Hunter',
      urlImage:
          'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/47db16c3-f907-4548-8d8f-f0bbe424d956/dc62u2n-c5093dc2-3be5-4894-bd64-55f5ed9837d4.jpg/v1/fill/w_752,h_1063,q_70,strp/gon_rage_by_nenaosu_dc62u2n-pre.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTI3MyIsInBhdGgiOiJcL2ZcLzQ3ZGIxNmMzLWY5MDctNDU0OC04ZDhmLWYwYmJlNDI0ZDk1NlwvZGM2MnUybi1jNTA5M2RjMi0zYmU1LTQ4OTQtYmQ2NC01NWY1ZWQ5ODM3ZDQuanBnIiwid2lkdGgiOiI8PTkwMCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.bETpKGN50TfGi3PCNHNaBpF9UlLdjKII1qvTB8O9Tfs'),
  Book(
      title: 'One Piece',
      urlImage: 'https://www.xtrafondos.com/wallpapers/vertical/monkey-d-luffy-de-one-piece-4017.jpg'),
  Book(
      title: 'Solo Leveling',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'Leveling With The Gods',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'Hunter X Hunter',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'One Piece',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'Solo Leveling',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'Leveling With The Gods',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'Hunter X Hunter',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'One Piece',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'Solo Leveling',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'Leveling With The Gods',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'Hunter X Hunter',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
  Book(
      title: 'One Piece',
      urlImage:
          'https://kbimages1-a.akamaihd.net/56933898-f8b0-4144-8728-173bd5763fb8/1200/1200/False/blue-lock-6.jpg'),
];
