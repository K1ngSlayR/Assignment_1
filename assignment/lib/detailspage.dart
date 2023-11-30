import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class BookDetailsPage extends StatelessWidget {
    String bookName;
    String authorName;
    String rating;
    String des;
    String imageUrl;
    String readUrl;
    String buyUrl;

  BookDetailsPage(this.bookName, this.authorName, this.rating,this.des,this.imageUrl,this.readUrl,this.buyUrl);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Book Name: $bookName'),
            SizedBox(height: 8),
            Image.network(imageUrl),
            SizedBox(height: 8),
            Text('Author: $authorName'),
            SizedBox(height: 8),
            Text('Rating: $rating'),
            SizedBox(height: 16),
            Text('Short Description: $des.'),
            SizedBox(height: 16),
            DropdownButton<String>(
              items: ['Read', 'Buy'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? selectOption) {
                if(selectOption=='Read'){
                  launch(readUrl);
                }
                else if(selectOption=='Buy'){
                  launch(buyUrl);
                }
                // Handle dropdown selection
              },
              hint: Text('Select an option'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the previous page
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
