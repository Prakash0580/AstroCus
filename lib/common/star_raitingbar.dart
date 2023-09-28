
// import 'package:flutter/material.dart';

// class StarRatingBar extends StatefulWidget {
//   final int starCount;
//   final double rating;
//   final Color color;
//   final double size;
//   final void Function(double) onRatingChanged;

//   StarRatingBar({
//     this.starCount = 5,
//     this.rating = 0.0,
//     this.color = Colors.amber,
//     this.size = 24.0,
//     required this.onRatingChanged,
//   }) : assert(rating >= 0.0 && rating <= starCount.toDouble());

//   @override
//   _StarRatingBarState createState() => _StarRatingBarState();
// }

// class _StarRatingBarState extends State<StarRatingBar> {
//   double _currentRating = 0.0;

//   @override
//   void initState() {
//     super.initState();
//     _currentRating = widget.rating;
//   }

//   void _updateRating(double newRating) {
//     setState(() {
//       _currentRating = newRating;
//       widget.onRatingChanged(_currentRating);
//     });
//   }

//   Widget _buildStar(int index) {
//     IconData iconData =
//         index >= _currentRating ? Icons.star_border : Icons.star;
//     return GestureDetector(
//       onTap: () => _updateRating(index + 1.0),
//       child: Icon(
//         iconData,
//         color: widget.color,
//         size: widget.size,
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: List.generate(widget.starCount, (index) => _buildStar(index)),
//     );
//   }
// }