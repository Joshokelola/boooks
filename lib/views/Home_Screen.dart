import 'package:flutter/material.dart';

import 'Books_Screen/books_scree.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF7B506F),
        title: const Text('Reading Now'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.star_border_outlined,
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Text(
              'READERA',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 20,
                fontFamily: 'Montserrat',
              ),
            ),
            Divider(
              thickness: 2,
              color: Color(0xFF1F1A3B),
            ),
            ListTile(
              leading: Icon(Icons.av_timer_outlined),
              title: Text(
                'Reading Now',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.my_library_books_outlined),
              title: Text(
                'Books & Documents',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite_border_outlined),
              title: Text(
                'Favorites',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.timelapse_sharp),
              title: Text(
                'To Read',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.done_all_rounded),
              title: Text(
                'Have Read',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.people_alt_outlined),
              title: Text(
                'Authors',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.bookmark_added_outlined),
              title: Text(
                'Series',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.library_books_outlined),
              title: Text(
                'Collections',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.stacked_bar_chart_outlined),
              title: Text(
                'Formats',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.folder_outlined),
              title: Text(
                'Reading Now',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text(
                'Download',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
            ListTile(
              leading: Icon(Icons.delete_outline),
              title: Text(
                'Reading Now',
                style: TextStyle(fontFamily: 'Montserrat'),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFFEAD7D1),
      body: BookScreen(),
    );
  }
}
