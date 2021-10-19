import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fb_lite_clone/models/books_model.dart';


class BookScreen extends StatelessWidget {
  const BookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final deviceOrientation = MediaQuery.of(context).orientation;

    return Container(
      margin: const EdgeInsets.only(
        top: 4,
        left: 3,
        right: 3,
      ),
      child: ListView.builder(
        shrinkWrap: true,
        dragStartBehavior: DragStartBehavior.start,
        itemCount: books.length,
        itemBuilder: (BuildContext context, int index) {
          BooksModel book = books[index];
          return GestureDetector(
            onTap: () {},
            child: Container(
              margin: const EdgeInsets.only(bottom: 5),
              height: (deviceOrientation == Orientation.portrait)
                  ? screenHeight * 0.3
                  : screenHeight * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF1F1A3B),
              ),
              child: Row(
                children: [
                  //Text(screenHeight.toString()),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 9,
                      bottom: 9,
                      left: 9,
                    ),
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    width: (deviceOrientation == Orientation.portrait)
                        ? screenWidth * 0.25
                        : screenWidth * 0.20,
                    height: (deviceOrientation == Orientation.portrait)
                        ? screenHeight * 0.23
                        : screenHeight * 0.35,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              book.image,
                              scale: 1,
                            ),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextWidget(
                      book: book,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class TextWidget extends StatefulWidget {
  const TextWidget({
    Key? key,
    required this.book,
  }) : super(key: key);

  final BooksModel book;

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  int _sliderVal = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 20),
      padding: const EdgeInsets.only(
        top: 1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.book.title,
            style: TextStyle(
              color: Color(0xFFDBCDC6),
              fontSize: 17,
              fontFamily: 'Montserrat',
            ),
          ),
          SizedBox(height: 66),
          Flexible(
            child: Slider(
              mouseCursor: MaterialStateMouseCursor.textable,
              min: 1,
              max: 10,
              divisions: 10,
              value: _sliderVal.toDouble(),
              onChanged: (newValue) {
                setState(() {
                  _sliderVal = newValue.round();
                });
              },
              activeColor: Color(0xFFDBCDC6),
              inactiveColor: Colors.blueGrey,
            ),
          ),
          Expanded(child: Container()),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.star_border_rounded,
                  size: 25,
                  color: Color(0xFFDBCDC6),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.timelapse_rounded,
                  size: 25,
                  color: Color(0xFFDBCDC6),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.done_all_rounded,
                  size: 25,
                  color: Color(0xFFDBCDC6),
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 5)
        ],
      ),
    );
  }
}
