import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  @override
  _StarRatingState createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int rating = 0;
  Color ratedColor = Colors.yellowAccent;
  Color unratedColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rating'),
      ),
      body: Container(
        child: Row(
          children: [
            IconButton(
              icon: Icon(
                Icons.star,
                color: rating >= 1 ? ratedColor : unratedColor,
              ),
              onPressed: () {
                setState(() {
                  rating = 1;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.star,
                color: rating >= 2 ? ratedColor : unratedColor,
              ),
              onPressed: () {
                setState(() {
                  rating = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.star,
                color: rating >= 3 ? ratedColor : unratedColor,
              ),
              onPressed: () {
                setState(() {
                  rating = 3;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.star,
                color: rating >= 4 ? ratedColor : unratedColor,
              ),
              onPressed: () {
                setState(() {
                  rating = 4;
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.star,
                color: rating >= 5 ? ratedColor : unratedColor,
              ),
              onPressed: () {
                setState(() {
                  rating = 5;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
