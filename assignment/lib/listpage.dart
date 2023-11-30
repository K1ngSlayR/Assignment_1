import 'package:flutter/material.dart';
import 'detailspage.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book List'),
      ),
      body: ListView(
        children: [
          BookCard('The GodFather', 'Mario Puzo', '4.5', 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRi_aIWMjSnhJ3pIXhp6x6ujK6TJ1lPG7ZmtW12yLfx8nCIPQAu', () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => BookDetailsPage('The GodFather ', 'Mario Puzo', '4.5',"The Godfather is a crime novel by American author Mario Puzo. Originally published in 1969 by G. P. Putnam's Sons, the novel details the story of a fictional Mafia family in New York City, headed by Vito Corleone, The Godfather.",
                'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRi_aIWMjSnhJ3pIXhp6x6ujK6TJ1lPG7ZmtW12yLfx8nCIPQAu','https://www.readanybook.online/ebook/the-godfather-619641',
                'https://www.amazon.in/Godfather-Mario-Puzo-ebook/dp/B009GJ870Q/ref=sr_1_2?keywords=the+godfather+book&qid=1701348169&sr=8-2')),
            );
          }),
          BookCard('Atomic Habits', 'James Clear', '4.6', 'https://m.media-amazon.com/images/I/41wuB-s8vRL.jpg', () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => BookDetailsPage('Atomic Habits', 'James Clear', '4.6','A supremely practical and useful book. James Clear distils the most fundamental information about habit formation, so you can accomplish more by focusing on less.',
                'https://m.media-amazon.com/images/I/41wuB-s8vRL.jpg',
                'https://www.booksfree.org/atomic-habits-pdf-free-download-a/','https://www.amazon.in/Atomic-Habits-James-Clear/dp/1847941834/ref=sr_1_3?crid=2LC7NQFABB1UE&keywords=atomic+habits&qid=1701348681&sprefix=atomic%2Caps%2C234&sr=8-3')),
            );
          }),
          BookCard('The Alchemist', 'Paulo Coelho', '4.3', 'https://www.books.lk/wp-content/uploads/2021/01/alchemist.jpg', () {
            Navigator.push(context,MaterialPageRoute(builder: (context) => BookDetailsPage('The Alchemist', 'Paulo Coelho', '4.3','The Alchemist is a novel by Brazilian author Paulo Coelho which was first published in 1988. Originally written in Portuguese, it became a widely translated international bestseller.',
                'https://pim-cdn0.ofm.co.th/products/thumbnail/D095668.jpg',
                'https://www.readanybook.online/ebook/the-alchemist-1-16896','https://www.amazon.in/Alchemist-Paulo-Coelho/dp/8172234988/ref=sr_1_3?crid=1S55YJKSYFW28&keywords=the+alchemist&qid=1701348648&sprefix=the+al%2Caps%2C257&sr=8-3')),
            );
          }),// Add more BookCard widgets as needed
        ],
      ),
    );
  }
}

class BookCard extends StatelessWidget {
   String bookName;
   String authorName;
   String rating;
   String imageUrl;
   VoidCallback onTap;

  BookCard(this.bookName, this.authorName, this.rating, this.imageUrl, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        child: ListTile(
          leading: Image.network(imageUrl),
          title: Text(bookName),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(authorName),
              Text('Rating: $rating'),
            ],
          ),
        ),
      ),
    );
  }
}
